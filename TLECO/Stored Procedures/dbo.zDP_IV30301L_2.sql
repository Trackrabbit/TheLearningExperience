SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30301L_2] (@DOCTYPE_RS smallint, @DOCNUMBR_RS char(21), @LNSEQNBR_RS numeric(19,5), @RCPTNMBR_RS char(21), @DOCTYPE_RE smallint, @DOCNUMBR_RE char(21), @LNSEQNBR_RE numeric(19,5), @RCPTNMBR_RE char(21)) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, DOCNUMBR, LNSEQNBR, DTLSEQNM, QTYTYPE, RCPTNMBR, RCPTQTY, RCPTEXCT, DEX_ROW_ID FROM .IV30301 ORDER BY DOCTYPE DESC, DOCNUMBR DESC, LNSEQNBR DESC, RCPTNMBR DESC, DEX_ROW_ID DESC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, DOCNUMBR, LNSEQNBR, DTLSEQNM, QTYTYPE, RCPTNMBR, RCPTQTY, RCPTEXCT, DEX_ROW_ID FROM .IV30301 WHERE DOCTYPE = @DOCTYPE_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE ORDER BY DOCTYPE DESC, DOCNUMBR DESC, LNSEQNBR DESC, RCPTNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  DOCTYPE, DOCNUMBR, LNSEQNBR, DTLSEQNM, QTYTYPE, RCPTNMBR, RCPTQTY, RCPTEXCT, DEX_ROW_ID FROM .IV30301 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND RCPTNMBR BETWEEN @RCPTNMBR_RS AND @RCPTNMBR_RE ORDER BY DOCTYPE DESC, DOCNUMBR DESC, LNSEQNBR DESC, RCPTNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30301L_2] TO [DYNGRP]
GO
