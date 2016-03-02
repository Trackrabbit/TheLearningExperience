SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10203SS_1] (@SOPNUMBE char(21), @SOPTYPE smallint, @LNITMSEQ int, @CMPNTSEQ int, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, QTYTYPE, QUANTITY, POSTED, DEX_ROW_ID FROM .SOP10203 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND SEQNUMBR = @SEQNUMBR ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10203SS_1] TO [DYNGRP]
GO
