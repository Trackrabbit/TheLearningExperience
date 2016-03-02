SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020103UN_3] (@BS int, @DCSTATUS smallint, @VENDORID char(15), @DCSTATUS_RS smallint, @VENDORID_RS char(15), @DCSTATUS_RE smallint, @VENDORID_RE char(15)) AS  set nocount on IF @DCSTATUS_RS IS NULL BEGIN SELECT TOP 25  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 WHERE ( DCSTATUS = @DCSTATUS AND VENDORID > @VENDORID OR DCSTATUS > @DCSTATUS ) ORDER BY DCSTATUS ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @DCSTATUS_RS = @DCSTATUS_RE BEGIN SELECT TOP 25  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 WHERE DCSTATUS = @DCSTATUS_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( DCSTATUS = @DCSTATUS AND VENDORID > @VENDORID OR DCSTATUS > @DCSTATUS ) ORDER BY DCSTATUS ASC, VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DCSTATUS, DOCTYPE, VCHRNMBR, PMNTNMBR, DOCDATE, VENDORID, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, OPURAMT, ORFRTAMT, OMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCHKTTL, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDATKN, ORDDLRAT, ORTDISAM, ORWROFAM, OBKPURAMT, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, OCHGAMT, ORDOCAMT, ODISAMTAV, ORGAPDISCTKN, OTOTPAY, OR1099AM, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020103 WHERE DCSTATUS BETWEEN @DCSTATUS_RS AND @DCSTATUS_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( DCSTATUS = @DCSTATUS AND VENDORID > @VENDORID OR DCSTATUS > @DCSTATUS ) ORDER BY DCSTATUS ASC, VENDORID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020103UN_3] TO [DYNGRP]
GO
