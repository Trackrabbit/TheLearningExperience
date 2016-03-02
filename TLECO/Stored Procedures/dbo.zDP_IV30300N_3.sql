SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30300N_3] (@BS int, @ITEMNMBR char(31), @DOCTYPE smallint, @DOCNUMBR char(21), @LNSEQNBR numeric(19,5), @DEX_ROW_ID int, @ITEMNMBR_RS char(31), @DOCTYPE_RS smallint, @DOCNUMBR_RS char(21), @LNSEQNBR_RS numeric(19,5), @ITEMNMBR_RE char(31), @DOCTYPE_RE smallint, @DOCNUMBR_RE char(21), @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 WHERE ( ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR = @LNSEQNBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR > @LNSEQNBR OR ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR > @DOCNUMBR OR ITEMNMBR = @ITEMNMBR AND DOCTYPE > @DOCTYPE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DOCTYPE ASC, DOCNUMBR ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 WHERE ITEMNMBR = @ITEMNMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR = @LNSEQNBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR > @LNSEQNBR OR ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR > @DOCNUMBR OR ITEMNMBR = @ITEMNMBR AND DOCTYPE > @DOCTYPE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DOCTYPE ASC, DOCNUMBR ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, DOCTYPE, DOCNUMBR, DOCDATE, HSTMODUL, CUSTNMBR, ITEMNMBR, LNSEQNBR, UOFM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, DECPLCUR, DECPLQTY, QTYBSUOM, Reason_Code, DEX_ROW_ID FROM .IV30300 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR = @LNSEQNBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND LNSEQNBR > @LNSEQNBR OR ITEMNMBR = @ITEMNMBR AND DOCTYPE = @DOCTYPE AND DOCNUMBR > @DOCNUMBR OR ITEMNMBR = @ITEMNMBR AND DOCTYPE > @DOCTYPE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DOCTYPE ASC, DOCNUMBR ASC, LNSEQNBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30300N_3] TO [DYNGRP]
GO