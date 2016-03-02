SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020102UN_2] (@BS int, @DCSTATUS smallint, @RMDTYPAL smallint, @DOCNUMBR char(21), @DCSTATUS_RS smallint, @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @DCSTATUS_RE smallint, @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21)) AS  set nocount on IF @DCSTATUS_RS IS NULL BEGIN SELECT TOP 25  DCSTATUS, RMDTYPAL, DOCNUMBR, DOCDATE, CUSTNMBR, CURNCYID, TRXSORCE, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, ORSLSAMT, ORCSTAMT, ORFRTAMT, ORMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDAVAMT, ORDATKN, ORDISRTD, ORDDLRAT, ORTDISAM, ORORGTRX, ORWROFAM, ORCOMAMT, ORBKTSLS, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020102 WHERE ( DCSTATUS = @DCSTATUS AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR DCSTATUS = @DCSTATUS AND RMDTYPAL > @RMDTYPAL OR DCSTATUS > @DCSTATUS ) ORDER BY DCSTATUS ASC, RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @DCSTATUS_RS = @DCSTATUS_RE BEGIN SELECT TOP 25  DCSTATUS, RMDTYPAL, DOCNUMBR, DOCDATE, CUSTNMBR, CURNCYID, TRXSORCE, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, ORSLSAMT, ORCSTAMT, ORFRTAMT, ORMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDAVAMT, ORDATKN, ORDISRTD, ORDDLRAT, ORTDISAM, ORORGTRX, ORWROFAM, ORCOMAMT, ORBKTSLS, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020102 WHERE DCSTATUS = @DCSTATUS_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( DCSTATUS = @DCSTATUS AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR DCSTATUS = @DCSTATUS AND RMDTYPAL > @RMDTYPAL OR DCSTATUS > @DCSTATUS ) ORDER BY DCSTATUS ASC, RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DCSTATUS, RMDTYPAL, DOCNUMBR, DOCDATE, CUSTNMBR, CURNCYID, TRXSORCE, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, ORSLSAMT, ORCSTAMT, ORFRTAMT, ORMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDAVAMT, ORDATKN, ORDISRTD, ORDDLRAT, ORTDISAM, ORORGTRX, ORWROFAM, ORCOMAMT, ORBKTSLS, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc, DEX_ROW_ID FROM .MC020102 WHERE DCSTATUS BETWEEN @DCSTATUS_RS AND @DCSTATUS_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( DCSTATUS = @DCSTATUS AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR DCSTATUS = @DCSTATUS AND RMDTYPAL > @RMDTYPAL OR DCSTATUS > @DCSTATUS ) ORDER BY DCSTATUS ASC, RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020102UN_2] TO [DYNGRP]
GO