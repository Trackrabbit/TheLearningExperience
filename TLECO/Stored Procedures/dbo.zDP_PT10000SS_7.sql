SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT10000SS_7] (@DOCNUMBR char(21), @ProjDistDocSource smallint, @DOCDATE datetime, @Whom char(31), @DSTSQNUM int) AS  set nocount on SELECT TOP 1  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 WHERE DOCNUMBR = @DOCNUMBR AND ProjDistDocSource = @ProjDistDocSource AND DOCDATE = @DOCDATE AND Whom = @Whom AND DSTSQNUM = @DSTSQNUM ORDER BY DOCNUMBR ASC, ProjDistDocSource ASC, DOCDATE ASC, Whom ASC, DSTSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT10000SS_7] TO [DYNGRP]
GO
