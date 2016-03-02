SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00615SI] (@USERID char(15), @CONSTS smallint, @CONTNBR char(11), @CNTTYPE char(11), @STRTDATE datetime, @ENDDATE datetime, @LSTBLDTE datetime, @NXTBLDTE datetime, @TOTBIL numeric(19,5), @Last_Amount_Billed numeric(19,5), @Invoiced_Amount numeric(19,5), @CUSTNMBR char(15), @ADRSCODE char(15), @MKDTOPST tinyint, @POSTED tinyint, @ORIGTOTBIL numeric(19,5), @ORIGLASTAmountBilled numeric(19,5), @Orig_Invoiced_Amount numeric(19,5), @ERMSGNBR smallint, @ERMSGTXT char(255), @ERMSGTX2 char(255), @Bill_To_Customer char(15), @SVC_Bill_To_Address_Code char(15), @svcConsolidateContractIn tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00615 (USERID, CONSTS, CONTNBR, CNTTYPE, STRTDATE, ENDDATE, LSTBLDTE, NXTBLDTE, TOTBIL, Last_Amount_Billed, Invoiced_Amount, CUSTNMBR, ADRSCODE, MKDTOPST, POSTED, ORIGTOTBIL, ORIGLASTAmountBilled, Orig_Invoiced_Amount, ERMSGNBR, ERMSGTXT, ERMSGTX2, Bill_To_Customer, SVC_Bill_To_Address_Code, svcConsolidateContractIn) VALUES ( @USERID, @CONSTS, @CONTNBR, @CNTTYPE, @STRTDATE, @ENDDATE, @LSTBLDTE, @NXTBLDTE, @TOTBIL, @Last_Amount_Billed, @Invoiced_Amount, @CUSTNMBR, @ADRSCODE, @MKDTOPST, @POSTED, @ORIGTOTBIL, @ORIGLASTAmountBilled, @Orig_Invoiced_Amount, @ERMSGNBR, @ERMSGTXT, @ERMSGTX2, @Bill_To_Customer, @SVC_Bill_To_Address_Code, @svcConsolidateContractIn) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00615SI] TO [DYNGRP]
GO
