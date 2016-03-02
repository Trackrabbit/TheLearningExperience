SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[E1_SC_GetNextBankDocumentNumber]
	@DocumentNumber CHAR(21) = null OUTPUT,
	@DocumentType INT
AS
	-- get the document abbreviation
	DECLARE @docAbbrev VARCHAR(3)
	SELECT @docAbbrev = DOCABREV from CM40101 where CMTrxType = @DocumentType
	-- get the next number
	DECLARE @nextNum INT
	UPDATE CM40100 SET NXTNUM = NXTNUM + 1, @nextNum = NXTNUM
	-- add the prefix, leading zeros and number
	SELECT @DocumentNumber = @docAbbrev + STUFF('000000000',(10-LEN(convert(char,@nextNum))),LEN(convert(char,@nextNum)),convert(char,@nextNum))
GO
GRANT EXECUTE ON  [dbo].[E1_SC_GetNextBankDocumentNumber] TO [DYNGRP]
GO
