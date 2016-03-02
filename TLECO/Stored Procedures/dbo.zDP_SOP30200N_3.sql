SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SOP30200N_3] (@BS int, @DOCDATE datetime, @DEX_ROW_ID int, @DOCDATE_RS datetime, @DOCDATE_RE datetime) AS /* 14.00.0084.000 */ set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, ORIGTYPE, ORIGNUMB, DOCID, DOCDATE, GLPOSTDT, QUOTEDAT, QUOEXPDA, ORDRDATE, INVODATE, BACKDATE, RETUDATE, ReqShipDate, FUFILDAT, ACTLSHIP, DISCDATE, DUEDATE, REPTING, TRXFREQU, TIMEREPD, TIMETREP, DYSTINCR, DTLSTREP, DSTBTCH1, DSTBTCH2, USDOCID1, USDOCID2, DISCFRGT, ORDAVFRT, DISCMISC, ORDAVMSC, DISAVAMT, ORDAVAMT, DISCRTND, ORDISRTD, DISTKNAM, ORDISTKN, DSCPCTAM, DSCDLRAM, ORDDLRAT, DISAVTKN, ORDATKN, PYMTRMID, PRCLEVEL, LOCNCODE, BCHSOURC, BACHNUMB, CUSTNMBR, CUSTNAME, CSTPONBR, PROSPECT, MSTRNUMB, PCKSLPNO, PICTICNU, MRKDNAMT, ORMRKDAM, PRBTADCD, PRSTADCD, CNTCPRSN, ShipToName, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMMAMNT, OCOMMAMT, CMMSLAMT, ORCOSAMT, NCOMAMNT, ORNCMAMT, SHIPMTHD, TRDISAMT, ORTDISAM, TRDISPCT, SUBTOTAL, ORSUBTOT, REMSUBTO, OREMSUBT, EXTDCOST, OREXTCST, FRTAMNT, ORFRTAMT, MISCAMNT, ORMISCAMT, TXENGCLD, TAXEXMT1, TAXEXMT2, TXRGNNUM, TAXSCHID, TXSCHSRC, BSIVCTTL, FRTSCHID, FRTTXAMT, ORFRTTAX, FRGTTXBL, MSCSCHID, MSCTXAMT, ORMSCTAX, MISCTXBL, BKTFRTAM, ORBKTFRT, BKTMSCAM, ORBKTMSC, BCKTXAMT, OBTAXAMT, TXBTXAMT, OTAXTAMT, TAXAMNT, ORTAXAMT, ECTRX, DOCAMNT, ORDOCAMT, PYMTRCVD, ORPMTRVD, DEPRECVD, ORDEPRVD, CODAMNT, ORCODAMT, ACCTAMNT, ORACTAMT, SALSTERR, SLPRSNID, UPSZONE, TIMESPRT, PSTGSTUS, VOIDSTTS, ALLOCABY, NOTEINDX, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, DENXRATE, EXCHDATE, TIME1, RTCLCMTD, MCTRXSTT, TRXSORCE, SOPHDRE1, SOPHDRE2, SOPLNERR, SOPHDRFL, COMMNTID, REFRENCE, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, Tax_Date, APLYWITH, WITHHAMT, SHPPGDOC, CORRCTN, SIMPLIFD, DOCNCORR, SEQNCORR, SALEDATE, EXCEPTIONALDEMAND, Flags, SOPSTATUS, SHIPCOMPLETE, DIRECTDEBIT, WorkflowApprStatCreditLm, WorkflowPriorityCreditLm, WorkflowApprStatusQuote, WorkflowPriorityQuote, Workflow_Status, ContractExchangeRateStat, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30200 WHERE ( DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR DOCDATE > @DOCDATE ) ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, ORIGTYPE, ORIGNUMB, DOCID, DOCDATE, GLPOSTDT, QUOTEDAT, QUOEXPDA, ORDRDATE, INVODATE, BACKDATE, RETUDATE, ReqShipDate, FUFILDAT, ACTLSHIP, DISCDATE, DUEDATE, REPTING, TRXFREQU, TIMEREPD, TIMETREP, DYSTINCR, DTLSTREP, DSTBTCH1, DSTBTCH2, USDOCID1, USDOCID2, DISCFRGT, ORDAVFRT, DISCMISC, ORDAVMSC, DISAVAMT, ORDAVAMT, DISCRTND, ORDISRTD, DISTKNAM, ORDISTKN, DSCPCTAM, DSCDLRAM, ORDDLRAT, DISAVTKN, ORDATKN, PYMTRMID, PRCLEVEL, LOCNCODE, BCHSOURC, BACHNUMB, CUSTNMBR, CUSTNAME, CSTPONBR, PROSPECT, MSTRNUMB, PCKSLPNO, PICTICNU, MRKDNAMT, ORMRKDAM, PRBTADCD, PRSTADCD, CNTCPRSN, ShipToName, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMMAMNT, OCOMMAMT, CMMSLAMT, ORCOSAMT, NCOMAMNT, ORNCMAMT, SHIPMTHD, TRDISAMT, ORTDISAM, TRDISPCT, SUBTOTAL, ORSUBTOT, REMSUBTO, OREMSUBT, EXTDCOST, OREXTCST, FRTAMNT, ORFRTAMT, MISCAMNT, ORMISCAMT, TXENGCLD, TAXEXMT1, TAXEXMT2, TXRGNNUM, TAXSCHID, TXSCHSRC, BSIVCTTL, FRTSCHID, FRTTXAMT, ORFRTTAX, FRGTTXBL, MSCSCHID, MSCTXAMT, ORMSCTAX, MISCTXBL, BKTFRTAM, ORBKTFRT, BKTMSCAM, ORBKTMSC, BCKTXAMT, OBTAXAMT, TXBTXAMT, OTAXTAMT, TAXAMNT, ORTAXAMT, ECTRX, DOCAMNT, ORDOCAMT, PYMTRCVD, ORPMTRVD, DEPRECVD, ORDEPRVD, CODAMNT, ORCODAMT, ACCTAMNT, ORACTAMT, SALSTERR, SLPRSNID, UPSZONE, TIMESPRT, PSTGSTUS, VOIDSTTS, ALLOCABY, NOTEINDX, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, DENXRATE, EXCHDATE, TIME1, RTCLCMTD, MCTRXSTT, TRXSORCE, SOPHDRE1, SOPHDRE2, SOPLNERR, SOPHDRFL, COMMNTID, REFRENCE, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, Tax_Date, APLYWITH, WITHHAMT, SHPPGDOC, CORRCTN, SIMPLIFD, DOCNCORR, SEQNCORR, SALEDATE, EXCEPTIONALDEMAND, Flags, SOPSTATUS, SHIPCOMPLETE, DIRECTDEBIT, WorkflowApprStatCreditLm, WorkflowPriorityCreditLm, WorkflowApprStatusQuote, WorkflowPriorityQuote, Workflow_Status, ContractExchangeRateStat, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30200 WHERE DOCDATE = @DOCDATE_RS AND ( DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR DOCDATE > @DOCDATE ) ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, ORIGTYPE, ORIGNUMB, DOCID, DOCDATE, GLPOSTDT, QUOTEDAT, QUOEXPDA, ORDRDATE, INVODATE, BACKDATE, RETUDATE, ReqShipDate, FUFILDAT, ACTLSHIP, DISCDATE, DUEDATE, REPTING, TRXFREQU, TIMEREPD, TIMETREP, DYSTINCR, DTLSTREP, DSTBTCH1, DSTBTCH2, USDOCID1, USDOCID2, DISCFRGT, ORDAVFRT, DISCMISC, ORDAVMSC, DISAVAMT, ORDAVAMT, DISCRTND, ORDISRTD, DISTKNAM, ORDISTKN, DSCPCTAM, DSCDLRAM, ORDDLRAT, DISAVTKN, ORDATKN, PYMTRMID, PRCLEVEL, LOCNCODE, BCHSOURC, BACHNUMB, CUSTNMBR, CUSTNAME, CSTPONBR, PROSPECT, MSTRNUMB, PCKSLPNO, PICTICNU, MRKDNAMT, ORMRKDAM, PRBTADCD, PRSTADCD, CNTCPRSN, ShipToName, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, CCode, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, COMAPPTO, COMMAMNT, OCOMMAMT, CMMSLAMT, ORCOSAMT, NCOMAMNT, ORNCMAMT, SHIPMTHD, TRDISAMT, ORTDISAM, TRDISPCT, SUBTOTAL, ORSUBTOT, REMSUBTO, OREMSUBT, EXTDCOST, OREXTCST, FRTAMNT, ORFRTAMT, MISCAMNT, ORMISCAMT, TXENGCLD, TAXEXMT1, TAXEXMT2, TXRGNNUM, TAXSCHID, TXSCHSRC, BSIVCTTL, FRTSCHID, FRTTXAMT, ORFRTTAX, FRGTTXBL, MSCSCHID, MSCTXAMT, ORMSCTAX, MISCTXBL, BKTFRTAM, ORBKTFRT, BKTMSCAM, ORBKTMSC, BCKTXAMT, OBTAXAMT, TXBTXAMT, OTAXTAMT, TAXAMNT, ORTAXAMT, ECTRX, DOCAMNT, ORDOCAMT, PYMTRCVD, ORPMTRVD, DEPRECVD, ORDEPRVD, CODAMNT, ORCODAMT, ACCTAMNT, ORACTAMT, SALSTERR, SLPRSNID, UPSZONE, TIMESPRT, PSTGSTUS, VOIDSTTS, ALLOCABY, NOTEINDX, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, DENXRATE, EXCHDATE, TIME1, RTCLCMTD, MCTRXSTT, TRXSORCE, SOPHDRE1, SOPHDRE2, SOPLNERR, SOPHDRFL, COMMNTID, REFRENCE, POSTEDDT, PTDUSRID, USER2ENT, CREATDDT, MODIFDT, Tax_Date, APLYWITH, WITHHAMT, SHPPGDOC, CORRCTN, SIMPLIFD, DOCNCORR, SEQNCORR, SALEDATE, EXCEPTIONALDEMAND, Flags, SOPSTATUS, SHIPCOMPLETE, DIRECTDEBIT, WorkflowApprStatCreditLm, WorkflowPriorityCreditLm, WorkflowApprStatusQuote, WorkflowPriorityQuote, Workflow_Status, ContractExchangeRateStat, Print_Phone_NumberGB, DEX_ROW_TS, DEX_ROW_ID FROM .SOP30200 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR DOCDATE > @DOCDATE ) ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP30200N_3] TO [DYNGRP]
GO
