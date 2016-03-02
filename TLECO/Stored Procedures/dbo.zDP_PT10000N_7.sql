SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT10000N_7] (@BS int, @DOCNUMBR char(21), @ProjDistDocSource smallint, @DOCDATE datetime, @Whom char(31), @DSTSQNUM int, @DOCNUMBR_RS char(21), @ProjDistDocSource_RS smallint, @DOCDATE_RS datetime, @Whom_RS char(31), @DSTSQNUM_RS int, @DOCNUMBR_RE char(21), @ProjDistDocSource_RE smallint, @DOCDATE_RE datetime, @Whom_RE char(31), @DSTSQNUM_RE int) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 WHERE ( DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE = @DOCDATE AND Whom = @Whom AND DSTSQNUM > @DSTSQNUM OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE = @DOCDATE AND Whom > @Whom OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE > @DOCDATE OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource > @ProjDistDocSource OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, ProjDistDocSource ASC, DOCDATE ASC, Whom ASC, DSTSQNUM ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 WHERE DOCNUMBR = @DOCNUMBR_RS AND ProjDistDocSource BETWEEN @ProjDistDocSource_RS AND @ProjDistDocSource_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND Whom BETWEEN @Whom_RS AND @Whom_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE = @DOCDATE AND Whom = @Whom AND DSTSQNUM > @DSTSQNUM OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE = @DOCDATE AND Whom > @Whom OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE > @DOCDATE OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource > @ProjDistDocSource OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, ProjDistDocSource ASC, DOCDATE ASC, Whom ASC, DSTSQNUM ASC END ELSE BEGIN SELECT TOP 25  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ProjDistDocSource BETWEEN @ProjDistDocSource_RS AND @ProjDistDocSource_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND Whom BETWEEN @Whom_RS AND @Whom_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE AND ( DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE = @DOCDATE AND Whom = @Whom AND DSTSQNUM > @DSTSQNUM OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE = @DOCDATE AND Whom > @Whom OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE > @DOCDATE OR DOCNUMBR = @DOCNUMBR AND ProjDistDocSource > @ProjDistDocSource OR DOCNUMBR > @DOCNUMBR ) ORDER BY DOCNUMBR ASC, ProjDistDocSource ASC, DOCDATE ASC, Whom ASC, DSTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT10000N_7] TO [DYNGRP]
GO
