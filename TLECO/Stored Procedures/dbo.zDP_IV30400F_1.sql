SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30400F_1] (@TRXSORCE_RS char(13), @IVDOCTYP_RS smallint, @DOCNUMBR_RS char(21), @LNSEQNBR_RS numeric(19,5), @SLTSQNUM_RS int, @TRXSORCE_RE char(13), @IVDOCTYP_RE smallint, @DOCNUMBR_RE char(21), @LNSEQNBR_RE numeric(19,5), @SLTSQNUM_RE int) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, SERLTNUM, SERLTQTY, FROMBIN, TOBIN, ITEMNMBR, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30400 ORDER BY TRXSORCE ASC, IVDOCTYP ASC, DOCNUMBR ASC, LNSEQNBR ASC, SLTSQNUM ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, SERLTNUM, SERLTQTY, FROMBIN, TOBIN, ITEMNMBR, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30400 WHERE TRXSORCE = @TRXSORCE_RS AND IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY TRXSORCE ASC, IVDOCTYP ASC, DOCNUMBR ASC, LNSEQNBR ASC, SLTSQNUM ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, IVDOCTYP, DOCNUMBR, LNSEQNBR, SLTSQNUM, SERLTNUM, SERLTQTY, FROMBIN, TOBIN, ITEMNMBR, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV30400 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND IVDOCTYP BETWEEN @IVDOCTYP_RS AND @IVDOCTYP_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY TRXSORCE ASC, IVDOCTYP ASC, DOCNUMBR ASC, LNSEQNBR ASC, SLTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30400F_1] TO [DYNGRP]
GO