SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00625SI] (@USERID char(15), @CONSTS smallint, @CONTNBR char(11), @CNTTYPE char(11), @CUSTNMBR char(15), @YEAR1 smallint, @PERIODID smallint, @MKDTOPST tinyint, @POSTED tinyint, @Transaction_Amount numeric(19,5), @OrigTransactionAmount numeric(19,5), @ERMSGNBR smallint, @ERMSGTXT char(255), @ERMSGTX2 char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00625 (USERID, CONSTS, CONTNBR, CNTTYPE, CUSTNMBR, YEAR1, PERIODID, MKDTOPST, POSTED, Transaction_Amount, OrigTransactionAmount, ERMSGNBR, ERMSGTXT, ERMSGTX2) VALUES ( @USERID, @CONSTS, @CONTNBR, @CNTTYPE, @CUSTNMBR, @YEAR1, @PERIODID, @MKDTOPST, @POSTED, @Transaction_Amount, @OrigTransactionAmount, @ERMSGNBR, @ERMSGTXT, @ERMSGTX2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00625SI] TO [DYNGRP]
GO
