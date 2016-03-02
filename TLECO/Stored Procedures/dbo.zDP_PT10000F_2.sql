SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT10000F_2] (@PROJNAME_RS char(21), @POSTED_RS tinyint, @ProjDistType_RS smallint, @DOCDATE_RS datetime, @DOCNUMBR_RS char(21), @ProjDistDocSource_RS smallint, @DSTSQNUM_RS int, @PROJNAME_RE char(21), @POSTED_RE tinyint, @ProjDistType_RE smallint, @DOCDATE_RE datetime, @DOCNUMBR_RE char(21), @ProjDistDocSource_RE smallint, @DSTSQNUM_RE int) AS  set nocount on IF @PROJNAME_RS IS NULL BEGIN SELECT TOP 25  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 ORDER BY PROJNAME ASC, POSTED ASC, ProjDistType ASC, DOCDATE ASC, DOCNUMBR ASC, ProjDistDocSource ASC, DSTSQNUM ASC END ELSE IF @PROJNAME_RS = @PROJNAME_RE BEGIN SELECT TOP 25  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 WHERE PROJNAME = @PROJNAME_RS AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND ProjDistType BETWEEN @ProjDistType_RS AND @ProjDistType_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ProjDistDocSource BETWEEN @ProjDistDocSource_RS AND @ProjDistDocSource_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY PROJNAME ASC, POSTED ASC, ProjDistType ASC, DOCDATE ASC, DOCNUMBR ASC, ProjDistDocSource ASC, DSTSQNUM ASC END ELSE BEGIN SELECT TOP 25  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 WHERE PROJNAME BETWEEN @PROJNAME_RS AND @PROJNAME_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND ProjDistType BETWEEN @ProjDistType_RS AND @ProjDistType_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ProjDistDocSource BETWEEN @ProjDistDocSource_RS AND @ProjDistDocSource_RE AND DSTSQNUM BETWEEN @DSTSQNUM_RS AND @DSTSQNUM_RE ORDER BY PROJNAME ASC, POSTED ASC, ProjDistType ASC, DOCDATE ASC, DOCNUMBR ASC, ProjDistDocSource ASC, DSTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT10000F_2] TO [DYNGRP]
GO
