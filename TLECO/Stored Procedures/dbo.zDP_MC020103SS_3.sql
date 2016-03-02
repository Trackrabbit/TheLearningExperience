SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020103SS_3] (@DCSTATUS smallint, @VENDORID char(15)) AS  set nocount on SELECT TOP 1  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 WHERE DCSTATUS = @DCSTATUS AND VENDORID = @VENDORID ORDER BY DCSTATUS ASC, VENDORID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020103SS_3] TO [DYNGRP]
GO
