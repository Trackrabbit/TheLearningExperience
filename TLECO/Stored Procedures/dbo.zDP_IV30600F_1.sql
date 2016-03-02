SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30600F_1] (@IVDOCTYP_RS smallint, @DOCNUMBR_RS char(21), @LNSEQNBR_RS numeric(19,5), @SLTSQNUM_RS int, @IVDOCTYP_RE smallint, @DOCNUMBR_RE char(21), @LNSEQNBR_RE numeric(19,5), @SLTSQNUM_RE int) AS  set nocount on IF @IVDOCTYP_RS IS NULL BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, LOTATRB1, LOTATRB2, LOTATRB3, LOTATRB4, LOTATRB5, DEX_ROW_ID FROM .IV30600 ORDER BY IVDOCTYP ASC, DOCNUMBR ASC, LNSEQNBR ASC, SLTSQNUM ASC END ELSE IF @IVDOCTYP_RS = @IVDOCTYP_RE BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, LOTATRB1, LOTATRB2, LOTATRB3, LOTATRB4, LOTATRB5, DEX_ROW_ID FROM .IV30600 WHERE IVDOCTYP = @IVDOCTYP_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY IVDOCTYP ASC, DOCNUMBR ASC, LNSEQNBR ASC, SLTSQNUM ASC END ELSE BEGIN SELECT TOP 25  IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, LOTATRB1, LOTATRB2, LOTATRB3, LOTATRB4, LOTATRB5, DEX_ROW_ID FROM .IV30600 WHERE IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY IVDOCTYP ASC, DOCNUMBR ASC, LNSEQNBR ASC, SLTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30600F_1] TO [DYNGRP]
GO
