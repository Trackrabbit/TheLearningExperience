SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00212SI] (@SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @LINITMTYP char(3), @LNITMSEQ int, @SEQNUMBR int, @ITEMNMBR char(31), @LOCNCODE char(11), @BIN char(15), @QTYTYPE smallint, @QUANTITY numeric(19,5), @POSTED tinyint, @MKDTOPST tinyint, @CMPNTSEQ int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00212 (SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, MKDTOPST, CMPNTSEQ) VALUES ( @SRVRECTYPE, @CALLNBR, @EQPLINE, @LINITMTYP, @LNITMSEQ, @SEQNUMBR, @ITEMNMBR, @LOCNCODE, @BIN, @QTYTYPE, @QUANTITY, @POSTED, @MKDTOPST, @CMPNTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00212SI] TO [DYNGRP]
GO
