SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30400F_2] (@SERLTNUM_RS char(21), @ITEMNMBR_RS char(31), @SERLTNUM_RE char(21), @ITEMNMBR_RE char(31)) AS  set nocount on IF @SERLTNUM_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, SERLTNUM, SERLTQTY, FROMBIN, TOBIN, ITEMNMBR, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30400 ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @SERLTNUM_RS = @SERLTNUM_RE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, SERLTNUM, SERLTQTY, FROMBIN, TOBIN, ITEMNMBR, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30400 WHERE SERLTNUM = @SERLTNUM_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, SERLTNUM, SERLTQTY, FROMBIN, TOBIN, ITEMNMBR, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30400 WHERE SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30400F_2] TO [DYNGRP]
GO
