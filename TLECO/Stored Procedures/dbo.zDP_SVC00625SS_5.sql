SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00625SS_5] (@USERID char(15), @CONSTS smallint, @MKDTOPST tinyint, @YEAR1 smallint, @PERIODID smallint, @CONTNBR char(11)) AS  set nocount on SELECT TOP 1  USERID, CONSTS, CONTNBR, CNTTYPE, CUSTNMBR, YEAR1, PERIODID, MKDTOPST, POSTED, Transaction_Amount, OrigTransactionAmount, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC00625 WHERE USERID = @USERID AND CONSTS = @CONSTS AND MKDTOPST = @MKDTOPST AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND CONTNBR = @CONTNBR ORDER BY USERID ASC, CONSTS ASC, MKDTOPST ASC, YEAR1 ASC, PERIODID ASC, CONTNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00625SS_5] TO [DYNGRP]
GO