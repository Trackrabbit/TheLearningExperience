SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10001SI] (@IVDOCNBR char(17), @IVDOCTYP smallint, @ITEMNMBR char(31), @LNSEQNBR numeric(19,5), @UOFM char(9), @QTYBSUOM numeric(19,5), @TRXQTY numeric(19,5), @UNITCOST numeric(19,5), @EXTDCOST numeric(19,5), @TRXLOCTN char(11), @TRNSTLOC char(11), @TRFQTYTY smallint, @TRTQTYTY smallint, @IVIVINDX int, @IVIVOFIX int, @IVWLNMSG binary(4), @DECPLCUR smallint, @DECPLQTY smallint, @USAGETYPE smallint, @Reason_Code char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV10001 (IVDOCNBR, IVDOCTYP, ITEMNMBR, LNSEQNBR, UOFM, QTYBSUOM, TRXQTY, UNITCOST, EXTDCOST, TRXLOCTN, TRNSTLOC, TRFQTYTY, TRTQTYTY, IVIVINDX, IVIVOFIX, IVWLNMSG, DECPLCUR, DECPLQTY, USAGETYPE, Reason_Code) VALUES ( @IVDOCNBR, @IVDOCTYP, @ITEMNMBR, @LNSEQNBR, @UOFM, @QTYBSUOM, @TRXQTY, @UNITCOST, @EXTDCOST, @TRXLOCTN, @TRNSTLOC, @TRFQTYTY, @TRTQTYTY, @IVIVINDX, @IVIVOFIX, @IVWLNMSG, @DECPLCUR, @DECPLQTY, @USAGETYPE, @Reason_Code) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10001SI] TO [DYNGRP]
GO