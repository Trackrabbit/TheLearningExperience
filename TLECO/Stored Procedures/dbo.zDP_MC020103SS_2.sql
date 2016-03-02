SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020103SS_2] (@DCSTATUS smallint, @DOCTYPE smallint, @VCHRNMBR char(21)) AS  set nocount on SELECT TOP 1  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 WHERE DCSTATUS = @DCSTATUS AND DOCTYPE = @DOCTYPE AND VCHRNMBR = @VCHRNMBR ORDER BY DCSTATUS ASC, DOCTYPE ASC, VCHRNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020103SS_2] TO [DYNGRP]
GO
