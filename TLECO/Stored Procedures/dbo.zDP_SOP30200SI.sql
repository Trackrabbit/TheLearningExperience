SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SOP30200SI] (@SOPTYPE smallint, @SOPNUMBE char(21), @ORIGTYPE smallint, @ORIGNUMB char(21), @DOCID char(15), @DOCDATE datetime, @GLPOSTDT datetime, @QUOTEDAT datetime, @QUOEXPDA datetime, @ORDRDATE datetime, @INVODATE datetime, @BACKDATE datetime, @RETUDATE datetime, @ReqShipDate datetime, @FUFILDAT datetime, @ACTLSHIP datetime, @DISCDATE datetime, @DUEDATE datetime, @REPTING tinyint, @TRXFREQU smallint, @TIMEREPD smallint, @TIMETREP smallint, @DYSTINCR smallint, @DTLSTREP datetime, @DSTBTCH1 char(15), @DSTBTCH2 char(15), @USDOCID1 char(15), @USDOCID2 char(15), @DISCFRGT numeric(19,5), @ORDAVFRT numeric(19,5), @DISCMISC numeric(19,5), @ORDAVMSC numeric(19,5), @DISAVAMT numeric(19,5), @ORDAVAMT numeric(19,5), @DISCRTND numeric(19,5), @ORDISRTD numeric(19,5), @DISTKNAM numeric(19,5), @ORDISTKN numeric(19,5), @DSCPCTAM smallint, @DSCDLRAM numeric(19,5), @ORDDLRAT numeric(19,5), @DISAVTKN numeric(19,5), @ORDATKN numeric(19,5), @PYMTRMID char(21), @PRCLEVEL char(11), @LOCNCODE char(11), @BCHSOURC char(15), @BACHNUMB char(15), @CUSTNMBR char(15), @CUSTNAME char(65), @CSTPONBR char(21), @PROSPECT smallint, @MSTRNUMB int, @PCKSLPNO char(21), @PICTICNU char(21), @MRKDNAMT numeric(19,5), @ORMRKDAM numeric(19,5), @PRBTADCD char(15), @PRSTADCD char(15), @CNTCPRSN char(61), @ShipToName char(65), @ADDRESS1 char(61), @ADDRESS2 char(61), @ADDRESS3 char(61), @CITY char(35), @STATE char(29), @ZIPCODE char(11), @CCode char(7), @COUNTRY char(61), @PHNUMBR1 char(21), @PHNUMBR2 char(21), @PHONE3 char(21), @FAXNUMBR char(21), @COMAPPTO smallint, @COMMAMNT numeric(19,5), @OCOMMAMT numeric(19,5), @CMMSLAMT numeric(19,5), @ORCOSAMT numeric(19,5), @NCOMAMNT numeric(19,5), @ORNCMAMT numeric(19,5), @SHIPMTHD char(15), @TRDISAMT numeric(19,5), @ORTDISAM numeric(19,5), @TRDISPCT smallint, @SUBTOTAL numeric(19,5), @ORSUBTOT numeric(19,5), @REMSUBTO numeric(19,5), @OREMSUBT numeric(19,5), @EXTDCOST numeric(19,5), @OREXTCST numeric(19,5), @FRTAMNT numeric(19,5), @ORFRTAMT numeric(19,5), @MISCAMNT numeric(19,5), @ORMISCAMT numeric(19,5), @TXENGCLD tinyint, @TAXEXMT1 char(25), @TAXEXMT2 char(25), @TXRGNNUM char(25), @TAXSCHID char(15), @TXSCHSRC smallint, @BSIVCTTL tinyint, @FRTSCHID char(15), @FRTTXAMT numeric(19,5), @ORFRTTAX numeric(19,5), @FRGTTXBL smallint, @MSCSCHID char(15), @MSCTXAMT numeric(19,5), @ORMSCTAX numeric(19,5), @MISCTXBL smallint, @BKTFRTAM numeric(19,5), @ORBKTFRT numeric(19,5), @BKTMSCAM numeric(19,5), @ORBKTMSC numeric(19,5), @BCKTXAMT numeric(19,5), @OBTAXAMT numeric(19,5), @TXBTXAMT numeric(19,5), @OTAXTAMT numeric(19,5), @TAXAMNT numeric(19,5), @ORTAXAMT numeric(19,5), @ECTRX tinyint, @DOCAMNT numeric(19,5), @ORDOCAMT numeric(19,5), @PYMTRCVD numeric(19,5), @ORPMTRVD numeric(19,5), @DEPRECVD numeric(19,5), @ORDEPRVD numeric(19,5), @CODAMNT numeric(19,5), @ORCODAMT numeric(19,5), @ACCTAMNT numeric(19,5), @ORACTAMT numeric(19,5), @SALSTERR char(15), @SLPRSNID char(15), @UPSZONE char(3), @TIMESPRT smallint, @PSTGSTUS smallint, @VOIDSTTS smallint, @ALLOCABY smallint, @NOTEINDX numeric(19,5), @CURNCYID char(15), @CURRNIDX smallint, @RATETPID char(15), @EXGTBLID char(15), @XCHGRATE numeric(19,7), @DENXRATE numeric(19,7), @EXCHDATE datetime, @TIME1 datetime, @RTCLCMTD smallint, @MCTRXSTT smallint, @TRXSORCE char(13), @SOPHDRE1 binary(4), @SOPHDRE2 binary(4), @SOPLNERR binary(4), @SOPHDRFL binary(4), @COMMNTID char(15), @REFRENCE char(31), @POSTEDDT datetime, @PTDUSRID char(15), @USER2ENT char(15), @CREATDDT datetime, @MODIFDT datetime, @Tax_Date datetime, @APLYWITH tinyint, @WITHHAMT numeric(19,5), @SHPPGDOC tinyint, @CORRCTN tinyint, @SIMPLIFD tinyint, @DOCNCORR char(21), @SEQNCORR smallint, @SALEDATE datetime, @EXCEPTIONALDEMAND tinyint, @Flags smallint, @SOPSTATUS smallint, @SHIPCOMPLETE tinyint, @DIRECTDEBIT tinyint, @WorkflowApprStatCreditLm smallint, @WorkflowPriorityCreditLm smallint, @WorkflowApprStatusQuote smallint, @WorkflowPriorityQuote smallint, @Workflow_Status smallint, @ContractExchangeRateStat smallint, @Print_Phone_NumberGB smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .SOP30200 (SOPTYPE, SOPNUMBE, ORIGTYPE, ORIGNUMB, DOCID, DOCDATE, GLPOSTDT, QUOTEDAT, QUOEXPDA, ORDRDATE, INVODATE, BACKDATE, RETUDATE, ReqShipDate, FUFILDAT, ACTLSHIP, DISCDATE, DUEDATE, REPTING, TRXFREQU, TIMEREPD, TIMETREP, DYSTINCR, DTLSTREP, DSTBTCH1, DSTBTCH2, USDOCID1, USDOCID2, DISCFRGT, ORDAVFRT, DISCMISC, ORDAVMSC, DISAVAMT, ORDAVAMT, DISCRTND, ORDISRTD, DISTKNAM, ORDISTKN, DSCPCTAM, DSCDLRAM, ORDDLRAT, DISAVTKN, ORDATKN, PYMTRMID, PRCLEVEL, LOCNCODE, BCHSOURC, BACHNUMB, CUSTNMBR, CUSTNAME, CSTPONBR, PROSPECT, MSTRNUMB, PCKSLPNO, PICTICNU, MRKDNAMT, ORMRKDAM, PRBTADCD, PRSTADCD, CNTCPRSN, ShipToName, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMMAMNT, OCOMMAMT, CMMSLAMT, ORCOSAMT, NCOMAMNT, ORNCMAMT, SHIPMTHD, TRDISAMT, ORTDISAM, TRDISPCT, SUBTOTAL, ORSUBTOT, REMSUBTO, OREMSUBT, EXTDCOST, OREXTCST, FRTAMNT, ORFRTAMT, MISCAMNT, ORMISCAMT, TXENGCLD, TAXEXMT1, TAXEXMT2, TXRGNNUM, TAXSCHID, TXSCHSRC, BSIVCTTL, FRTSCHID, FRTTXAMT, ORFRTTAX, FRGTTXBL, MSCSCHID, MSCTXAMT, ORMSCTAX, MISCTXBL, BKTFRTAM, ORBKTFRT, BKTMSCAM, ORBKTMSC, BCKTXAMT, OBTAXAMT, TXBTXAMT, OTAXTAMT, TAXAMNT, ORTAXAMT, ECTRX, DOCAMNT, ORDOCAMT, PYMTRCVD, ORPMTRVD, DEPRECVD, ORDEPRVD, CODAMNT, ORCODAMT, ACCTAMNT, ORACTAMT, SALSTERR, SLPRSNID, UPSZONE, TIMESPRT, PSTGSTUS, VOIDSTTS, ALLOCABY, NOTEINDX, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, DENXRATE, EXCHDATE, TIME1, RTCLCMTD, MCTRXSTT, TRXSORCE, SOPHDRE1, SOPHDRE2, SOPLNERR, SOPHDRFL, COMMNTID, REFRENCE, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, Tax_Date, APLYWITH, WITHHAMT, SHPPGDOC, CORRCTN, SIMPLIFD, DOCNCORR, SEQNCORR, SALEDATE, EXCEPTIONALDEMAND, Flags, SOPSTATUS, SHIPCOMPLETE, DIRECTDEBIT, WorkflowApprStatCreditLm, WorkflowPriorityCreditLm, WorkflowApprStatusQuote, WorkflowPriorityQuote, Workflow_Status, ContractExchangeRateStat, Print_Phone_NumberGB) VALUES ( @SOPTYPE, @SOPNUMBE, @ORIGTYPE, @ORIGNUMB, @DOCID, @DOCDATE, @GLPOSTDT, @QUOTEDAT, @QUOEXPDA, @ORDRDATE, @INVODATE, @BACKDATE, @RETUDATE, @ReqShipDate, @FUFILDAT, @ACTLSHIP, @DISCDATE, @DUEDATE, @REPTING, @TRXFREQU, @TIMEREPD, @TIMETREP, @DYSTINCR, @DTLSTREP, @DSTBTCH1, @DSTBTCH2, @USDOCID1, @USDOCID2, @DISCFRGT, @ORDAVFRT, @DISCMISC, @ORDAVMSC, @DISAVAMT, @ORDAVAMT, @DISCRTND, @ORDISRTD, @DISTKNAM, @ORDISTKN, @DSCPCTAM, @DSCDLRAM, @ORDDLRAT, @DISAVTKN, @ORDATKN, @PYMTRMID, @PRCLEVEL, @LOCNCODE, @BCHSOURC, @BACHNUMB, @CUSTNMBR, @CUSTNAME, @CSTPONBR, @PROSPECT, @MSTRNUMB, @PCKSLPNO, @PICTICNU, @MRKDNAMT, @ORMRKDAM, @PRBTADCD, @PRSTADCD, @CNTCPRSN, @ShipToName, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @CCode, @COUNTRY, @PHNUMBR1, @PHNUMBR2, @PHONE3, @FAXNUMBR, @COMAPPTO, @COMMAMNT, @OCOMMAMT, @CMMSLAMT, @ORCOSAMT, @NCOMAMNT, @ORNCMAMT, @SHIPMTHD, @TRDISAMT, @ORTDISAM, @TRDISPCT, @SUBTOTAL, @ORSUBTOT, @REMSUBTO, @OREMSUBT, @EXTDCOST, @OREXTCST, @FRTAMNT, @ORFRTAMT, @MISCAMNT, @ORMISCAMT, @TXENGCLD, @TAXEXMT1, @TAXEXMT2, @TXRGNNUM, @TAXSCHID, @TXSCHSRC, @BSIVCTTL, @FRTSCHID, @FRTTXAMT, @ORFRTTAX, @FRGTTXBL, @MSCSCHID, @MSCTXAMT, @ORMSCTAX, @MISCTXBL, @BKTFRTAM, @ORBKTFRT, @BKTMSCAM, @ORBKTMSC, @BCKTXAMT, @OBTAXAMT, @TXBTXAMT, @OTAXTAMT, @TAXAMNT, @ORTAXAMT, @ECTRX, @DOCAMNT, @ORDOCAMT, @PYMTRCVD, @ORPMTRVD, @DEPRECVD, @ORDEPRVD, @CODAMNT, @ORCODAMT, @ACCTAMNT, @ORACTAMT, @SALSTERR, @SLPRSNID, @UPSZONE, @TIMESPRT, @PSTGSTUS, @VOIDSTTS, @ALLOCABY, @NOTEINDX, @CURNCYID, @CURRNIDX, @RATETPID, @EXGTBLID, @XCHGRATE, @DENXRATE, @EXCHDATE, @TIME1, @RTCLCMTD, @MCTRXSTT, @TRXSORCE, @SOPHDRE1, @SOPHDRE2, @SOPLNERR, @SOPHDRFL, @COMMNTID, @REFRENCE, @POSTEDDT, @PTDUSRID, @USER2ENT, @CREATDDT, @MODIFDT, @Tax_Date, @APLYWITH, @WITHHAMT, @SHPPGDOC, @CORRCTN, @SIMPLIFD, @DOCNCORR, @SEQNCORR, @SALEDATE, @EXCEPTIONALDEMAND, @Flags, @SOPSTATUS, @SHIPCOMPLETE, @DIRECTDEBIT, @WorkflowApprStatCreditLm, @WorkflowPriorityCreditLm, @WorkflowApprStatusQuote, @WorkflowPriorityQuote, @Workflow_Status, @ContractExchangeRateStat, @Print_Phone_NumberGB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30200SI] TO [DYNGRP]
GO
