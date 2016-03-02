SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00712SI] (@ORDDOCID char(15), @LNITMSEQ int, @SEQNUMBR int, @ITEMNMBR char(31), @TRNSFLOC char(11), @LOCNCODE char(11), @BIN char(15), @TOBIN char(15), @QTYTYPE smallint, @QUANTITY numeric(19,5), @POSTED tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00712 (ORDDOCID, LNITMSEQ, SEQNUMBR, ITEMNMBR, TRNSFLOC, LOCNCODE, BIN, TOBIN, QTYTYPE, QUANTITY, POSTED) VALUES ( @ORDDOCID, @LNITMSEQ, @SEQNUMBR, @ITEMNMBR, @TRNSFLOC, @LOCNCODE, @BIN, @TOBIN, @QTYTYPE, @QUANTITY, @POSTED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00712SI] TO [DYNGRP]
GO