SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020103F_1] (@DOCTYPE_RS smallint, @VCHRNMBR_RS char(21), @DOCTYPE_RE smallint, @VCHRNMBR_RE char(21)) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 ORDER BY DOCTYPE ASC, VCHRNMBR ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 WHERE DOCTYPE = @DOCTYPE_RS AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY DOCTYPE ASC, VCHRNMBR ASC END ELSE BEGIN SELECT TOP 25  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY DOCTYPE ASC, VCHRNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020103F_1] TO [DYNGRP]
GO
