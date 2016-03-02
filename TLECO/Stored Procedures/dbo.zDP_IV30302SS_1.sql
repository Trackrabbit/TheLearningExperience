SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30302SS_1] (@DOCTYPE smallint, @DOCNUMBR char(21), @LNSEQNBR numeric(19,5), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  DOCNUMBR, DOCTYPE, LNSEQNBR, SEQNUMBR, ITEMNMBR, LOCNCODE, BIN, TOBIN, QTYTYPE, QTYSLCTD, DEX_ROW_ID FROM .IV30302 WHERE DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR = @LNSEQNBR AND SEQNUMBR = @SEQNUMBR ORDER BY DOCTYPE ASC, DOCNUMBR ASC, LNSEQNBR ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30302SS_1] TO [DYNGRP]
GO
