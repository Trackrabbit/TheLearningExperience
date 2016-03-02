SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create Procedure [dbo].[E1_SC_GetNextNumber]
	@TYPE smallint,
	@DOC_TYPE smallint,
	@DOC_ID char(15),
	@INC_DEC  tinyint = 1 
as

DECLARE @I_tInc_Dec tinyint
DECLARE @O_iErrorState int

SET @I_tInc_Dec = @INC_DEC

--Inventory
IF @TYPE = 0
BEGIN
	
	DECLARE @I_tIVDOCTYP tinyint
	DECLARE @O_vIvNumber varchar(21)

	SET @I_tIVDOCTYP = @DOC_TYPE

	EXECUTE taGetIvNumber
	   @I_tIVDOCTYP
	  ,@I_tInc_Dec
	  ,@O_vIvNumber OUTPUT
	  ,@O_iErrorState OUTPUT

	IF @O_iErrorState <> 0
	BEGIN
		SELECT 'err' as Number
	END
	ELSE
	BEGIN
		SELECT @O_vIvNumber as Number
	END
END

--Payables
IF @TYPE = 1
BEGIN
	IF @DOC_TYPE = 1 OR @DOC_TYPE = 5
	BEGIN
		DECLARE @O_iNTVCHNUM varchar(21)
		SET @O_iNTVCHNUM = ''
		EXECUTE taGetPMNextVoucherNumber
		   @O_iNTVCHNUM OUTPUT
		  ,0
		  ,@O_iErrorState OUTPUT

		IF @O_iErrorState <> 0
		BEGIN
			SELECT 'err' as Number
		END
		ELSE
		BEGIN
			SELECT @O_iNTVCHNUM as Number
		END
	END
	ELSE IF @DOC_TYPE = 2
	BEGIN
		-- get check number
		DECLARE @chqNum CHAR(21)
		EXEC E1_SC_GetNextBankCheckNumber @DOC_ID, @chqNum OUTPUT
		SELECT @chqNum as Number
	END
	ELSE IF @DOC_TYPE = 3 OR @DOC_TYPE = 4
	BEGIN
		-- get payment number
		DECLARE @pmtNum CHAR(21)
		EXEC E1_SC_GetNextPaymentNumber @pmtNum OUTPUT
		SELECT @pmtNum as Number
	END
END

--Receivables
IF @TYPE = 2
BEGIN
	DECLARE @O_vDOCNumber varchar(21)
	DECLARE @I_vDOCTYPE tinyint

	SET @I_vDOCTYPE = @DOC_TYPE

	EXECUTE taGetPaymentNumber
		   @I_vDOCTYPE
		  ,@I_tInc_Dec
		  ,@O_vDOCNumber OUTPUT
		  ,@O_iErrorState OUTPUT

	IF @O_iErrorState <> 0
	BEGIN
		SELECT 'err' as Number
	END
	ELSE
	BEGIN
		SELECT @O_vDOCNumber as Number
	END
END

--SOP
IF @TYPE = 3
BEGIN

	DECLARE @I_tSOPTYPE tinyint
	DECLARE @I_cDOCID char(15)
	DECLARE @O_vSopNumber varchar(21)

	SET @I_tSOPTYPE = @DOC_TYPE
	SET @I_cDOCID = @DOC_ID

	EXECUTE taGetSopNumber
		   @I_tSOPTYPE
		  ,@I_cDOCID
		  ,@I_tInc_Dec
		  ,@O_vSopNumber OUTPUT
		  ,@O_iErrorState OUTPUT

	IF @O_iErrorState <> 0
		BEGIN
			SELECT 'err' as Number
		END
		ELSE
		BEGIN
			SELECT @O_vSopNumber as Number
		END
END

--POP
IF @TYPE = 4
BEGIN

	IF @DOC_TYPE = 1
	BEGIN

		DECLARE @O_vPONUMBER varchar(17)

		EXECUTE taGetPONextNumber
		   @I_tInc_Dec
		  ,@O_vPONUMBER OUTPUT
		  ,@O_iErrorState OUTPUT

		IF @O_iErrorState <> 0
			BEGIN
				SELECT 'err' as Number
			END
			ELSE
			BEGIN
				SELECT @O_vPONUMBER as Number
			END
	END
	ELSE
	BEGIN

		DECLARE @O_vPOPRCTNM varchar(17)

		EXECUTE taGetPurchReceiptNextNumber
		   @I_tInc_Dec
		  ,@O_vPOPRCTNM OUTPUT
		  ,@O_iErrorState OUTPUT

		IF @O_iErrorState <> 0
			BEGIN
				SELECT 'err' as Number
			END
			ELSE
			BEGIN
				SELECT @O_vPOPRCTNM as Number
			END
		
	END
	

	
END

--GL
IF @TYPE = 5
BEGIN
	IF @DOC_TYPE = 1 -- journal number
	BEGIN
		DECLARE @stored_proc_name char(30), 
			@retstat int ,
			@param3 int,
			@param4 tinyint,
			@param5 int 

		SELECT @param3 = 0 
		SELECT @param4 = 0 
		SELECT @param5 = 0 
		SELECT @stored_proc_name = 'glGetNextJournalEntry' 
	
		EXEC @retstat = @stored_proc_name 	1, 
							0, 
							@param3 OUT, 
							@param4 OUT, 
							@param5 OUT 

		SELECT @param3 as Number
	END
	ELSE IF @DOC_TYPE = 2 -- bank deposit number
	BEGIN
		DECLARE @param1	char(15),	-- checkbook id
			@param2 char(21)	-- deposit number
		SELECT @param1 = @DOC_ID
		SELECT @param2 = ''
		EXEC E1_SC_GetNextBankDepositNumber @param1, @param2 out
		SELECT @param2 as Number
	END
	ELSE IF @DOC_TYPE = 3 -- bank receipt number
	BEGIN
		DECLARE @recNo char(21)
		EXEC E1_SC_GetNextBankReceiptNumber @recNo output
		SELECT @recNo as Number
	END
	ELSE IF @DOC_TYPE = 4 -- check number
	BEGIN
		DECLARE @chNum char(21)
		EXEC E1_SC_GetNextBankCheckNumber @DOC_ID, @chNum OUTPUT
		SELECT @chNum as Number
	END
	ELSE -- bank transaction number
	BEGIN
		DECLARE @tranNo char(21)
		EXEC E1_SC_GetNextBankDocumentNumber @tranNo output, @DOC_ID
		SELECT @tranNo as Number
	END
END

-- PROJECT
IF @TYPE = 6
	BEGIN
		DECLARE @projNo CHAR(17)
		EXEC E1_SC_GetNextProjectNumber @DOC_TYPE, @projNo OUTPUT
		SELECT @projNo AS Number
	END

-- SERVICE
IF @TYPE = 7
	BEGIN
		IF @DOC_TYPE = 1
		BEGIN
			DECLARE @CALL VARCHAR(10)
			EXECUTE SVC_New_Call_Number @CALL OUTPUT
			SELECT @CALL as Number
		END
		ELSE IF @DOC_TYPE = 2
		BEGIN
			DECLARE @rmaCALL VARCHAR(15)
			EXECUTE SVC_New_DocumentID 'RMA', @rmaCALL OUTPUT
			SELECT @rmaCALL as Number
		END
		ELSE
		BEGIN
			DECLARE @rtvCALL VARCHAR(15)
			EXECUTE SVC_New_DocumentID 'RTV', @rtvCALL OUTPUT
			SELECT @rtvCALL as Number
		END
	END

-- PAYROLL
if @TYPE = 8
	BEGIN
		DECLARE @EMP CHAR(15)
		EXECUTE E1_SC_GetNextEmployeeNumber @EMP OUTPUT
		SELECT @EMP as Number
	END
GO
GRANT EXECUTE ON  [dbo].[E1_SC_GetNextNumber] TO [DYNGRP]
GO
