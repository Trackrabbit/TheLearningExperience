SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT10000SS_1] (@ProjDistDocSource smallint, @DOCNUMBR char(21), @DSTSQNUM int) AS  set nocount on SELECT TOP 1  PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE, DEX_ROW_ID FROM .PT10000 WHERE ProjDistDocSource = @ProjDistDocSource AND DOCNUMBR = @DOCNUMBR AND DSTSQNUM = @DSTSQNUM ORDER BY ProjDistDocSource ASC, DOCNUMBR ASC, DSTSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT10000SS_1] TO [DYNGRP]
GO