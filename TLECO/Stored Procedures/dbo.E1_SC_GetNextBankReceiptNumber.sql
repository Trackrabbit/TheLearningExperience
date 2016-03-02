SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[E1_SC_GetNextBankReceiptNumber]
	@ReceiptNumber CHAR(21) OUTPUT
as
	-- get the receipt prefix code
	DECLARE @recCode VARCHAR(3)
	SELECT @recCode = DOCABREV FROM CM40101 WHERE CMTrxType = 2
	-- get the next number
	DECLARE @nextNum INT
	UPDATE CM40100 SET NXTNUM = NXTNUM + 1, @nextNum = NXTNUM
	-- add the prefix, leading zeros and number
	SELECT @ReceiptNumber = @recCode + STUFF('000000000',(10-LEN(convert(char,@nextNum))),LEN(convert(char,@nextNum)),convert(char,@nextNum))


GO
GRANT EXECUTE ON  [dbo].[E1_SC_GetNextBankReceiptNumber] TO [DYNGRP]
GO
