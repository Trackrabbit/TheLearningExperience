SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpCreateVoidRecord]  @iHist smallint  = NULL,  @iYear smallint  = NULL,   @iJournalEntry int   = NULL,  @iRecurTrxSeq numeric(19,5) = NULL,  @iSourceDocument char(11)  = NULL,  @iReference char(31)  = NULL,  @iDesc char(31)  = NULL,  @iTrxDate datetime  = NULL,  @iTrxSource char(13)  = NULL,  @iAcctIdx int   = NULL,  @iLastUser char(15)  = NULL,  @iLastDateEdited datetime  = NULL,  @iUserWhoPosted char(15)  = NULL,  @iOrigTrxSource char(13)  = NULL,  @iOrigTrxType smallint  = NULL,  @iSeries smallint  = NULL,  @iOrigContNum char(21)  = NULL,  @iOrigMstrID char(31)  = NULL,  @iOrigMstrNum char(31)  = NULL,  @iOrigDocNum char(21)  = NULL,  @iOrigPostedDate datetime  = NULL,  @iOrigSeqNum int   = NULL,  @iCurId char(15)  = NULL,  @iCurIdx smallint  = NULL,  @iRateTypeID char(15)  = NULL,  @iExchTblID char(15)  = NULL,  @iExchRate numeric(19,7) = NULL,  @iExchDate datetime  = NULL,  @iTime datetime  = NULL,  @iRateCalcMeth smallint  = NULL,  @iNoteIdx numeric(19,5) = NULL,  @iIcTrx tinyint  = NULL,  @iOrigCompID char(5)  = NULL,  @iOrigJrnlEntry int   = NULL,  @iDenomExchRate numeric(19,7) = NULL,  @iMCTrxState smallint  = NULL,  @iCorrespUnit   char(5)  = NULL,  @iSeqNum int   = NULL,  @iTrxType int   = NULL,  @OrigSource char(13)  = NULL,  @QuickOffSet int   = NULL,  @nLedgerID int   = NULL as  if @iTrxType = 0   select @iTrxType = 1  if @iOrigTrxSource = ''  select @iOrigTrxSource = @iTrxSource  if @iHist = 0  begin  insert into  GL20000  (OPENYEAR,  JRNENTRY,  RCTRXSEQ,  SOURCDOC,  REFRENCE,  DSCRIPTN,  TRXDATE,  TRXSORCE,  ACTINDX,  LASTUSER,  LSTDTEDT,  USWHPSTD,  ORGNTSRC,  ORGNATYP,  SERIES,  ORTRXTYP,  ORCTRNUM,  ORMSTRID,  ORMSTRNM,  ORDOCNUM,  ORPSTDDT,  ORTRXSRC,  OrigSeqNum,  CURNCYID,  CURRNIDX,  RATETPID,  EXGTBLID,  XCHGRATE,  EXCHDATE,  TIME1,  RTCLCMTD,  NOTEINDX,  ICTRX,  ORCOMID,  ORIGINJE,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  DOCDATE,  DENXRATE,  MCTRXSTT,  CorrespondingUnit,  VOIDED,  SEQNUMBR,   QKOFSET,  Ledger_ID)  select  @iYear,  @iJournalEntry,  @iRecurTrxSeq,  @iSourceDocument,  @iReference,  @iDesc,  @iTrxDate,  @iTrxSource,  @iAcctIdx,  @iLastUser,  @iLastDateEdited,  @iUserWhoPosted,  @OrigSource,  @iTrxType,  @iSeries,  @iOrigTrxType,  @iOrigContNum,  @iOrigMstrID,  @iOrigMstrNum,  @iOrigDocNum,  @iOrigPostedDate,  @iOrigTrxSource,  @iOrigSeqNum,  @iCurId,  @iCurIdx,  @iRateTypeID,  @iExchTblID,  @iExchRate,  @iExchDate,  @iTime,  @iRateCalcMeth,  @iNoteIdx,  @iIcTrx,  @iOrigCompID,  @iOrigJrnlEntry,  0,  0,  0,  0,  0,  @iDenomExchRate,  @iMCTrxState,  @iCorrespUnit,  1,  @iSeqNum,  @QuickOffSet,  @nLedgerID end else begin  insert into  GL30000  (HSTYEAR,  JRNENTRY,  RCTRXSEQ,  SOURCDOC,  REFRENCE,  DSCRIPTN,  TRXDATE,  TRXSORCE,  ACTINDX,  LASTUSER,  LSTDTEDT,  USWHPSTD,  ORGNTSRC,  ORGNATYP,  SERIES,  ORTRXTYP,  ORCTRNUM,  ORMSTRID,  ORMSTRNM,  ORDOCNUM,  ORPSTDDT,  ORTRXSRC,  OrigSeqNum,  CURNCYID,  CURRNIDX,  RATETPID,  EXGTBLID,  XCHGRATE,  EXCHDATE,  TIME1,  RTCLCMTD,  NOTEINDX,  ICTRX,  ORCOMID,  ORIGINJE,  CRDTAMNT,  DEBITAMT,  ORCRDAMT,  ORDBTAMT,  DOCDATE,  DENXRATE,  MCTRXSTT,  CorrespondingUnit,  VOIDED,  SEQNUMBR,  QKOFSET,  Ledger_ID)  select  @iYear,  @iJournalEntry,  @iRecurTrxSeq,  @iSourceDocument,  @iReference,  @iDesc,  @iTrxDate,  @iTrxSource,  @iAcctIdx,  @iLastUser,  @iLastDateEdited,  @iUserWhoPosted,  @OrigSource,  @iTrxType,  @iSeries,  @iOrigTrxType,  @iOrigContNum,  @iOrigMstrID,  @iOrigMstrNum,  @iOrigDocNum,  @iOrigPostedDate,  @iOrigTrxSource,  @iOrigSeqNum,  @iCurId,  @iCurIdx,  @iRateTypeID,  @iExchTblID,  @iExchRate,  @iExchDate,  @iTime,  @iRateCalcMeth,  @iNoteIdx,  @iIcTrx,  @iOrigCompID,  @iOrigJrnlEntry,  0,  0,  0,  0,  0,  @iDenomExchRate,  @iMCTrxState,  @iCorrespUnit,  1,  @iSeqNum,   @QuickOffSet,  @nLedgerID end  return   
GO
GRANT EXECUTE ON  [dbo].[glpCreateVoidRecord] TO [DYNGRP]
GO