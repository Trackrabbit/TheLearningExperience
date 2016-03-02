SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PT10000SI] (@PROJNAME char(21), @ITEMNMBR char(31), @ITEMDESC char(101), @NONINVEN smallint, @ProjDistDocSource smallint, @DOCNUMBR char(21), @LNITMSEQ int, @CMPNTSEQ int, @DSTSQNUM int, @DOCDATE datetime, @Whom char(31), @ProjDistType smallint, @ProDistCategory smallint, @INCORDEC smallint, @DISTAMNT numeric(19,5), @QUANTITY numeric(19,5), @BillableType smallint, @DECPLQTY smallint, @DECPLCUR smallint, @POSTED tinyint, @ProjDistBillStatus smallint, @PayCode char(7), @PAYRATE numeric(19,5), @SOPNUMBE char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PT10000 (PROJNAME, ITEMNMBR, ITEMDESC, NONINVEN, ProjDistDocSource, DOCNUMBR, LNITMSEQ, CMPNTSEQ, DSTSQNUM, DOCDATE, Whom, ProjDistType, ProDistCategory, INCORDEC, DISTAMNT, QUANTITY, BillableType, DECPLQTY, DECPLCUR, POSTED, ProjDistBillStatus, PayCode, PAYRATE, SOPNUMBE) VALUES ( @PROJNAME, @ITEMNMBR, @ITEMDESC, @NONINVEN, @ProjDistDocSource, @DOCNUMBR, @LNITMSEQ, @CMPNTSEQ, @DSTSQNUM, @DOCDATE, @Whom, @ProjDistType, @ProDistCategory, @INCORDEC, @DISTAMNT, @QUANTITY, @BillableType, @DECPLQTY, @DECPLCUR, @POSTED, @ProjDistBillStatus, @PayCode, @PAYRATE, @SOPNUMBE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PT10000SI] TO [DYNGRP]
GO
