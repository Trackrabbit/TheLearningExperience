SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC020102SI] (@DCSTATUS smallint, @RMDTYPAL smallint, @DOCNUMBR char(21), @DOCDATE datetime, @CUSTNMBR char(15), @CURNCYID char(15), @TRXSORCE char(13), @CURRNIDX smallint, @RATETPID char(15), @EXGTBLID char(15), @XCHGRATE numeric(19,7), @EXCHDATE datetime, @TIME1 datetime, @RTCLCMTD smallint, @ORCTRXAM numeric(19,5), @ORSLSAMT numeric(19,5), @ORCSTAMT numeric(19,5), @ORFRTAMT numeric(19,5), @ORMISCAMT numeric(19,5), @ORTAXAMT numeric(19,5), @ORCASAMT numeric(19,5), @ORCHKAMT numeric(19,5), @ORCCDAMT numeric(19,5), @ORAPPAMT numeric(19,5), @ORDISTKN numeric(19,5), @ORDAVAMT numeric(19,5), @ORDATKN numeric(19,5), @ORDISRTD numeric(19,5), @ORDDLRAT numeric(19,5), @ORTDISAM numeric(19,5), @ORORGTRX numeric(19,5), @ORWROFAM numeric(19,5), @ORCOMAMT numeric(19,5), @ORBKTSLS numeric(19,5), @ORBKTFRT numeric(19,5), @ORBKTMSC numeric(19,5), @UNGANLOS numeric(19,5), @RMMCERRS binary(4), @DENXRATE numeric(19,7), @MCTRXSTT smallint, @OrigBackoutTradeDisc numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC020102 (DCSTATUS, RMDTYPAL, DOCNUMBR, DOCDATE, CUSTNMBR, CURNCYID, TRXSORCE, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, ORCTRXAM, ORSLSAMT, ORCSTAMT, ORFRTAMT, ORMISCAMT, ORTAXAMT, ORCASAMT, ORCHKAMT, ORCCDAMT, ORAPPAMT, ORDISTKN, ORDAVAMT, ORDATKN, ORDISRTD, ORDDLRAT, ORTDISAM, ORORGTRX, ORWROFAM, ORCOMAMT, ORBKTSLS, ORBKTFRT, ORBKTMSC, UNGANLOS, RMMCERRS, DENXRATE, MCTRXSTT, OrigBackoutTradeDisc) VALUES ( @DCSTATUS, @RMDTYPAL, @DOCNUMBR, @DOCDATE, @CUSTNMBR, @CURNCYID, @TRXSORCE, @CURRNIDX, @RATETPID, @EXGTBLID, @XCHGRATE, @EXCHDATE, @TIME1, @RTCLCMTD, @ORCTRXAM, @ORSLSAMT, @ORCSTAMT, @ORFRTAMT, @ORMISCAMT, @ORTAXAMT, @ORCASAMT, @ORCHKAMT, @ORCCDAMT, @ORAPPAMT, @ORDISTKN, @ORDAVAMT, @ORDATKN, @ORDISRTD, @ORDDLRAT, @ORTDISAM, @ORORGTRX, @ORWROFAM, @ORCOMAMT, @ORBKTSLS, @ORBKTFRT, @ORBKTMSC, @UNGANLOS, @RMMCERRS, @DENXRATE, @MCTRXSTT, @OrigBackoutTradeDisc) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC020102SI] TO [DYNGRP]
GO