CREATE TABLE [dbo].[SOP10100]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIGTYPE] [smallint] NOT NULL,
[ORIGNUMB] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[QUOTEDAT] [datetime] NOT NULL,
[QUOEXPDA] [datetime] NOT NULL,
[ORDRDATE] [datetime] NOT NULL,
[INVODATE] [datetime] NOT NULL,
[BACKDATE] [datetime] NOT NULL,
[RETUDATE] [datetime] NOT NULL,
[ReqShipDate] [datetime] NOT NULL,
[FUFILDAT] [datetime] NOT NULL,
[ACTLSHIP] [datetime] NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[REPTING] [tinyint] NOT NULL,
[TRXFREQU] [smallint] NOT NULL,
[TIMEREPD] [smallint] NOT NULL,
[TIMETREP] [smallint] NOT NULL,
[DYSTINCR] [smallint] NOT NULL,
[DTLSTREP] [datetime] NOT NULL,
[DSTBTCH1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTBTCH2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USDOCID1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USDOCID2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISCFRGT] [numeric] (19, 5) NOT NULL,
[ORDAVFRT] [numeric] (19, 5) NOT NULL,
[DISCMISC] [numeric] (19, 5) NOT NULL,
[ORDAVMSC] [numeric] (19, 5) NOT NULL,
[DISAVAMT] [numeric] (19, 5) NOT NULL,
[ORDAVAMT] [numeric] (19, 5) NOT NULL,
[DISCRTND] [numeric] (19, 5) NOT NULL,
[ORDISRTD] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[ORDISTKN] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[ORDATKN] [numeric] (19, 5) NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSTPONBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROSPECT] [smallint] NOT NULL,
[MSTRNUMB] [int] NOT NULL,
[PCKSLPNO] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PICTICNU] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MRKDNAMT] [numeric] (19, 5) NOT NULL,
[ORMRKDAM] [numeric] (19, 5) NOT NULL,
[PRBTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShipToName] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMAPPTO] [smallint] NOT NULL,
[COMMAMNT] [numeric] (19, 5) NOT NULL,
[OCOMMAMT] [numeric] (19, 5) NOT NULL,
[CMMSLAMT] [numeric] (19, 5) NOT NULL,
[ORCOSAMT] [numeric] (19, 5) NOT NULL,
[NCOMAMNT] [numeric] (19, 5) NOT NULL,
[ORNCMAMT] [numeric] (19, 5) NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[ORTDISAM] [numeric] (19, 5) NOT NULL,
[TRDISPCT] [smallint] NOT NULL,
[SUBTOTAL] [numeric] (19, 5) NOT NULL,
[ORSUBTOT] [numeric] (19, 5) NOT NULL,
[REMSUBTO] [numeric] (19, 5) NOT NULL,
[OREMSUBT] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[ORFRTAMT] [numeric] (19, 5) NOT NULL,
[MISCAMNT] [numeric] (19, 5) NOT NULL,
[ORMISCAMT] [numeric] (19, 5) NOT NULL,
[TXENGCLD] [tinyint] NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXSCHSRC] [smallint] NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTTXAMT] [numeric] (19, 5) NOT NULL,
[ORFRTTAX] [numeric] (19, 5) NOT NULL,
[FRGTTXBL] [smallint] NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCTXAMT] [numeric] (19, 5) NOT NULL,
[ORMSCTAX] [numeric] (19, 5) NOT NULL,
[MISCTXBL] [smallint] NOT NULL,
[BKTFRTAM] [numeric] (19, 5) NOT NULL,
[ORBKTFRT] [numeric] (19, 5) NOT NULL,
[BKTMSCAM] [numeric] (19, 5) NOT NULL,
[ORBKTMSC] [numeric] (19, 5) NOT NULL,
[BCKTXAMT] [numeric] (19, 5) NOT NULL,
[OBTAXAMT] [numeric] (19, 5) NOT NULL,
[TXBTXAMT] [numeric] (19, 5) NOT NULL,
[OTAXTAMT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[ECTRX] [tinyint] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[PYMTRCVD] [numeric] (19, 5) NOT NULL,
[ORPMTRVD] [numeric] (19, 5) NOT NULL,
[DEPRECVD] [numeric] (19, 5) NOT NULL,
[ORDEPRVD] [numeric] (19, 5) NOT NULL,
[CODAMNT] [numeric] (19, 5) NOT NULL,
[ORCODAMT] [numeric] (19, 5) NOT NULL,
[ACCTAMNT] [numeric] (19, 5) NOT NULL,
[ORACTAMT] [numeric] (19, 5) NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPSZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMESPRT] [smallint] NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[ALLOCABY] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPHDRE1] [binary] (4) NOT NULL,
[SOPHDRE2] [binary] (4) NOT NULL,
[SOPLNERR] [binary] (4) NOT NULL,
[SOPHDRFL] [binary] (4) NOT NULL,
[SOPMCERR] [binary] (4) NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[APLYWITH] [tinyint] NOT NULL,
[WITHHAMT] [numeric] (19, 5) NOT NULL,
[SHPPGDOC] [tinyint] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[CORRNXST] [tinyint] NOT NULL,
[DOCNCORR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNCORR] [smallint] NOT NULL,
[SALEDATE] [datetime] NOT NULL,
[SOPHDRE3] [binary] (4) NOT NULL,
[EXCEPTIONALDEMAND] [tinyint] NOT NULL,
[Flags] [smallint] NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[OrigBackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[GPSFOINTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTEGRATIONSOURCE] [smallint] NOT NULL,
[INTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPSTATUS] [smallint] NOT NULL,
[SHIPCOMPLETE] [tinyint] NOT NULL,
[DIRECTDEBIT] [tinyint] NOT NULL,
[WorkflowApprStatCreditLm] [smallint] NOT NULL,
[WorkflowPriorityCreditLm] [smallint] NOT NULL,
[WorkflowApprStatusQuote] [smallint] NOT NULL,
[WorkflowPriorityQuote] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[ContractExchangeRateStat] [smallint] NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__SOP10100__DEX_RO__088931C6] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[sopWFupdateSOP10104] ON [dbo].[SOP10100]  FOR UPDATE  AS  declare @creditlimitholdid char(15) if update(WorkflowApprStatCreditLm) and (select WorkflowApprStatCreditLm from inserted)=6 begin  if (select SOPTYPE from inserted)=6   select @creditlimitholdid = isnull((select CREDITLIMITHOLDID from SOP40200 a,inserted where a.DOCID=inserted.DOCID and a.SOPTYPE=3),'')   else  select @creditlimitholdid = isnull((select CREDITLIMITHOLDID from SOP40200 a,inserted where a.DOCID=inserted.DOCID and a.SOPTYPE=inserted.SOPTYPE),'')    if @creditlimitholdid<>''  begin   if (select count(*) from SOP10104 a, inserted where a.SOPTYPE=inserted.SOPTYPE and a.SOPNUMBE = inserted.SOPNUMBE and a.PRCHLDID=@creditlimitholdid)>0  begin  update SOP10104  set DELETE1=1, HOLDDATE=convert(char(10),GETDATE(),120),TIME1=convert(char(10),GETDATE(),114)  from inserted  where SOP10104.SOPTYPE=inserted.SOPTYPE and SOP10104.SOPNUMBE = inserted.SOPNUMBE and SOP10104.PRCHLDID=@creditlimitholdid   end  end end   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SOP10100_D] ON [dbo].[SOP10100] FOR DELETE  AS  declare @SOPType smallint declare @SOPNumber char(17)  select @SOPType = SOPTYPE, @SOPNumber = SOPNUMBE from deleted  if not exists( select * from SOP30200 where SOPNUMBE = @SOPNumber and SOPTYPE  = @SOPType )  begin  if exists( select * from SVC00660 where SOPNUMBE = @SOPNumber and SOPTYPE  = @SOPType )  BEGIN  if @SOPType = 3  delete SVC00660 where SOPNUMBE = @SOPNumber and SOPTYPE  = @SOPType   delete from SVC00661 where SOPNUMBE = @SOPNumber and SOPTYPE  = @SOPType   END  end return   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_SOP10100U] ON [dbo].[SOP10100] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.SOP10100 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.SOP10100, inserted WHERE SOP10100.SOPTYPE = inserted.SOPTYPE AND SOP10100.SOPNUMBE = inserted.SOPNUMBE END set nocount off    
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__TIME1__02D05870] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__ACTLSH__7E0BA353] CHECK ((datepart(hour,[ACTLSHIP])=(0) AND datepart(minute,[ACTLSHIP])=(0) AND datepart(second,[ACTLSHIP])=(0) AND datepart(millisecond,[ACTLSHIP])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__BACKDA__7A3B126F] CHECK ((datepart(hour,[BACKDATE])=(0) AND datepart(minute,[BACKDATE])=(0) AND datepart(second,[BACKDATE])=(0) AND datepart(millisecond,[BACKDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__CREATD__04B8A0E2] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__DISCDA__7EFFC78C] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__DOCDAT__74823919] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__DTLSTR__00E80FFE] CHECK ((datepart(hour,[DTLSTREP])=(0) AND datepart(minute,[DTLSTREP])=(0) AND datepart(second,[DTLSTREP])=(0) AND datepart(millisecond,[DTLSTREP])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__DUEDAT__7FF3EBC5] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__EXCHDA__01DC3437] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__FUFILD__7D177F1A] CHECK ((datepart(hour,[FUFILDAT])=(0) AND datepart(minute,[FUFILDAT])=(0) AND datepart(second,[FUFILDAT])=(0) AND datepart(millisecond,[FUFILDAT])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__GLPOST__75765D52] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__INVODA__7946EE36] CHECK ((datepart(hour,[INVODATE])=(0) AND datepart(minute,[INVODATE])=(0) AND datepart(second,[INVODATE])=(0) AND datepart(millisecond,[INVODATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__MODIFD__05ACC51B] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__ORDRDA__7852C9FD] CHECK ((datepart(hour,[ORDRDATE])=(0) AND datepart(minute,[ORDRDATE])=(0) AND datepart(second,[ORDRDATE])=(0) AND datepart(millisecond,[ORDRDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__POSTED__03C47CA9] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__QUOEXP__775EA5C4] CHECK ((datepart(hour,[QUOEXPDA])=(0) AND datepart(minute,[QUOEXPDA])=(0) AND datepart(second,[QUOEXPDA])=(0) AND datepart(millisecond,[QUOEXPDA])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__QUOTED__766A818B] CHECK ((datepart(hour,[QUOTEDAT])=(0) AND datepart(minute,[QUOTEDAT])=(0) AND datepart(second,[QUOTEDAT])=(0) AND datepart(millisecond,[QUOTEDAT])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__ReqShi__7C235AE1] CHECK ((datepart(hour,[ReqShipDate])=(0) AND datepart(minute,[ReqShipDate])=(0) AND datepart(second,[ReqShipDate])=(0) AND datepart(millisecond,[ReqShipDate])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__RETUDA__7B2F36A8] CHECK ((datepart(hour,[RETUDATE])=(0) AND datepart(minute,[RETUDATE])=(0) AND datepart(second,[RETUDATE])=(0) AND datepart(millisecond,[RETUDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__SALEDA__07950D8D] CHECK ((datepart(hour,[SALEDATE])=(0) AND datepart(minute,[SALEDATE])=(0) AND datepart(second,[SALEDATE])=(0) AND datepart(millisecond,[SALEDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [CK__SOP10100__Tax_Da__06A0E954] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[SOP10100] ADD CONSTRAINT [PKSOP10100] PRIMARY KEY NONCLUSTERED  ([SOPNUMBE], [SOPTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SOP10100] ON [dbo].[SOP10100] ([BCHSOURC], [BACHNUMB], [SOPTYPE], [SOPNUMBE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10100] ON [dbo].[SOP10100] ([CUSTNMBR], [CSTPONBR], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP10100] ON [dbo].[SOP10100] ([DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SOP10100] ON [dbo].[SOP10100] ([MSTRNUMB], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SOP10100] ON [dbo].[SOP10100] ([SOPTYPE], [DOCID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[ORIGTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[ORIGNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[DOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[QUOTEDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[QUOEXPDA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[ORDRDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[INVODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[BACKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[RETUDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[ReqShipDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[FUFILDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[ACTLSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[REPTING]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[TRXFREQU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[TIMEREPD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[TIMETREP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[DYSTINCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[DTLSTREP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[DSTBTCH1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[DSTBTCH2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[USDOCID1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[USDOCID2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DISCFRGT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDAVFRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DISCMISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDAVMSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DISAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DISCRTND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDISRTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDISTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDATKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[CSTPONBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[PROSPECT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[MSTRNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PCKSLPNO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PICTICNU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[MRKDNAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORMRKDAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PRBTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[ShipToName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PHNUMBR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PHNUMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[COMAPPTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[COMMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[OCOMMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[CMMSLAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORCOSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[NCOMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORNCMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORTDISAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[TRDISPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[SUBTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORSUBTOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[REMSUBTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[OREMSUBT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORFRTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[MISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORMISCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[TXENGCLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[TXSCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[FRTTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORFRTTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[FRGTTXBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[MSCTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORMSCTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[MISCTXBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[BKTFRTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORBKTFRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[BKTMSCAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORBKTMSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[TXBTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[OTAXTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[ECTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDOCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[PYMTRCVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORPMTRVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DEPRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORDEPRVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[CODAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORCODAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ACCTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[ORACTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[TIMESPRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[VOIDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[ALLOCABY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPHDRE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPHDRE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPLNERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPHDRFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPMCERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[APLYWITH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[WITHHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SHPPGDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[CORRNXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[DOCNCORR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SEQNCORR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10100].[SALEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPHDRE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[EXCEPTIONALDEMAND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10100].[OrigBackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[GPSFOINTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[INTEGRATIONSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10100].[INTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SOPSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[SHIPCOMPLETE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[DIRECTDEBIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[WorkflowApprStatCreditLm]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[WorkflowPriorityCreditLm]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[WorkflowApprStatusQuote]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[WorkflowPriorityQuote]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[ContractExchangeRateStat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10100].[Print_Phone_NumberGB]'
GO
GRANT SELECT ON  [dbo].[SOP10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10100] TO [RAPIDGRP]
GO
