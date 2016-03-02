SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06112SS_1] (@WORECTYPE smallint, @WORKORDNUM char(11), @LINITMTYP char(3), @CMPNTSEQ int, @LNITMSEQ int, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  WORECTYPE, WORKORDNUM, LINITMTYP, LNITMSEQ, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, MKDTOPST, CMPNTSEQ, DEX_ROW_ID FROM .SVC06112 WHERE WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LINITMTYP = @LINITMTYP AND CMPNTSEQ = @CMPNTSEQ AND LNITMSEQ = @LNITMSEQ AND SEQNUMBR = @SEQNUMBR ORDER BY WORECTYPE ASC, WORKORDNUM ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06112SS_1] TO [DYNGRP]
GO