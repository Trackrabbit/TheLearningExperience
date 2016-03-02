CREATE TABLE [dbo].[PM00200]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCHKNM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDSHNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADDCDPR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDPAD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDSFR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDTRO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCLSID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCNTCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPSZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACNMVNDR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXIDNMBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDSTTS] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PARVENID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRDDISCT] [smallint] NOT NULL,
[TEN99TYPE] [smallint] NOT NULL,
[TEN99BOXNUMBER] [smallint] NOT NULL,
[MINORDER] [numeric] (19, 5) NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINPYTYP] [smallint] NOT NULL,
[MINPYPCT] [smallint] NOT NULL,
[MINPYDLR] [numeric] (19, 5) NOT NULL,
[MXIAFVND] [smallint] NOT NULL,
[MAXINDLR] [numeric] (19, 5) NOT NULL,
[COMMENT1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRLMTDLR] [numeric] (19, 5) NOT NULL,
[PYMNTPRI] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KGLDSTHS] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[HOLD] [tinyint] NOT NULL,
[PTCSHACF] [smallint] NOT NULL,
[CREDTLMT] [smallint] NOT NULL,
[WRITEOFF] [smallint] NOT NULL,
[MXWOFAMT] [numeric] (19, 5) NOT NULL,
[SBPPSDED] [tinyint] NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[DXVARNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRTCOMDT] [datetime] NOT NULL,
[CRTEXPDT] [datetime] NOT NULL,
[RTOBUTKN] [tinyint] NOT NULL,
[XPDTOBLG] [tinyint] NOT NULL,
[PRSPAYEE] [tinyint] NOT NULL,
[PMAPINDX] [int] NOT NULL,
[PMCSHIDX] [int] NOT NULL,
[PMDAVIDX] [int] NOT NULL,
[PMDTKIDX] [int] NOT NULL,
[PMFINIDX] [int] NOT NULL,
[PMMSCHIX] [int] NOT NULL,
[PMFRTIDX] [int] NOT NULL,
[PMTAXIDX] [int] NOT NULL,
[PMWRTIDX] [int] NOT NULL,
[PMPRCHIX] [int] NOT NULL,
[PMRTNGIX] [int] NOT NULL,
[PMTDSCIX] [int] NOT NULL,
[ACPURIDX] [int] NOT NULL,
[PURPVIDX] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Revalue_Vendor] [tinyint] NOT NULL,
[Post_Results_To] [smallint] NOT NULL,
[FREEONBOARD] [smallint] NOT NULL,
[GOVCRPID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOVINDID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[DOCFMTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TaxInvRecvd] [tinyint] NOT NULL,
[USERLANG] [smallint] NOT NULL,
[WithholdingType] [smallint] NOT NULL,
[WithholdingFormType] [smallint] NOT NULL,
[WithholdingEntityType] [smallint] NOT NULL,
[TaxFileNumMode] [smallint] NOT NULL,
[BRTHDATE] [datetime] NOT NULL,
[LaborPmtType] [smallint] NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[VADCD1099] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__PM00200__DEX_ROW__23A73C56] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[taVendorInsert] on [dbo].[PM00200] for insert, update as declare @iStatus  int declare @MASTERDB char(15) declare @VENDORID char(15) declare @VENDNAME char(64) declare @VNDCHKNM char(64) declare @VENDSHNM char(15) declare @VADDCDPR char(15) declare @VADCDPAD char(15) declare @VADCDSFR char(15) declare @VADCDTRO char(15) declare @VNDCLSID char(11) declare @VNDCNTCT char(31) declare @ADDRESS1 char(31) declare @ADDRESS2 char(31) declare @ADDRESS3 char(31) declare @CITY char(31) declare @STATE char(29) declare @ZIPCODE char(11) declare @COUNTRY char(21) declare @PHNUMBR1 char(15) declare @PHNUMBR2 char(15) declare @PHONE3 char(15) declare @FAXNUMBR char(21) declare @UPSZONE char(3) declare @SHIPMTHD char(15) declare @TAXSCHID char(15) declare @ACNMVNDR char(21) declare @TXIDNMBR char(11) declare @VENDSTTS smallint declare @CURNCYID char(15) declare @TXRGNNUM char(25) declare @PARVENID char(15) declare @TRDDISCT smallint declare @TEN99TYPE smallint declare @TEN99BOXNUMBER smallint declare @MINORDER numeric(19,5) declare @PYMTRMID char(21) declare @MINPYTYP smallint declare @MINPYPCT smallint declare @MINPYDLR numeric(19,5) declare @MXIAFVND smallint declare @MAXINDLR numeric(19,5) declare @COMMENT1 char(31) declare @COMMENT2 char(31) declare @USERDEF1 char(21) declare @USERDEF2 char(21) declare @CRLMTDLR numeric(19,5) declare @PYMNTPRI char(3) declare @KPCALHST tinyint declare @KGLDSTHS tinyint declare @KPERHIST tinyint declare @KPTRXHST tinyint declare @HOLD tinyint declare @PTCSHACF smallint declare @CREDTLMT smallint declare @WRITEOFF smallint declare @MXWOFAMT numeric(19,5) declare @SBPPSDED tinyint declare @PPSTAXRT smallint declare @DXVARNUM char(25) declare @CRTCOMDT datetime declare @CRTEXPDT datetime declare @RTOBUTKN tinyint declare @XPDTOBLG tinyint declare @PRSPAYEE tinyint declare @NOTEINDX numeric(19,5) declare @CHEKBKID char(15) declare @MODIFDT  datetime declare @CREATDDT datetime declare @RATETPID char(15) declare @Revalue_Vendor tinyint declare @Post_Results_To smallint declare @FREEONBOARD smallint declare @GOVCRPID char(31) declare @GOVINDID char(31) declare @DISGRPER smallint declare @DUEGRPER smallint declare @DOCFMTID char(15) declare @TaxInvRecvd tinyint declare @USERLANG smallint			 declare @WithholdingType smallint		 declare @WithholdingFormType smallint		 declare @WithholdingEntityType smallint		 declare @TaxFileNumMode smallint		 declare @BRTHDATE datetime			 declare @LaborPmtType smallint			 declare	@CCode char(6)				 declare	@DECLID char(15)			 declare	@CBVAT tinyint				 declare @Workflow_Approval_Status smallint  declare @Workflow_Priority smallint  declare @VADCD1099 CHAR(15) declare @PMAPINDX int declare	@PMCSHIDX int declare	@PMDAVIDX int declare	@PMDTKIDX int declare	@PMFINIDX int declare	@PMMSCHIX int declare	@PMFRTIDX int declare	@PMTAXIDX int declare	@PMWRTIDX int declare	@PMPRCHIX int declare	@PMRTNGIX int declare	@PMTDSCIX int declare	@ACPURIDX int declare	@PURPVIDX int declare @PMAPINDX_ACTNUMST char(129) declare	@PMCSHIDX_ACTNUMST char(129) declare	@PMDAVIDX_ACTNUMST char(129) declare	@PMDTKIDX_ACTNUMST char(129) declare	@PMFINIDX_ACTNUMST char(129) declare	@PMMSCHIX_ACTNUMST char(129) declare	@PMFRTIDX_ACTNUMST char(129) declare	@PMTAXIDX_ACTNUMST char(129) declare	@PMWRTIDX_ACTNUMST char(129) declare	@PMPRCHIX_ACTNUMST char(129) declare	@PMRTNGIX_ACTNUMST char(129) declare	@PMTDSCIX_ACTNUMST char(129) declare	@ACPURIDX_ACTNUMST char(129) declare	@PURPVIDX_ACTNUMST char(129) select  @MASTERDB = DB_Name(), @VENDORID = VENDORID,  @VENDNAME = VENDNAME, @VNDCHKNM = VNDCHKNM, @VENDSHNM = VENDSHNM, @VADDCDPR = VADDCDPR, @VADCDPAD = VADCDPAD, @VADCDSFR = VADCDSFR, @VADCDTRO = VADCDTRO, @VNDCLSID = VNDCLSID, @VNDCNTCT = VNDCNTCT, @ADDRESS1 = ADDRESS1, @ADDRESS2 = ADDRESS2, @ADDRESS3 = ADDRESS3, @CITY =  CITY, @STATE = STATE, @ZIPCODE = ZIPCODE, @COUNTRY = COUNTRY, @PHNUMBR1 = PHNUMBR1, @PHNUMBR2 = PHNUMBR2, @PHONE3 = PHONE3, @FAXNUMBR = FAXNUMBR, @UPSZONE = UPSZONE, @SHIPMTHD = SHIPMTHD, @TAXSCHID = TAXSCHID, @ACNMVNDR = ACNMVNDR, @TXIDNMBR = TXIDNMBR, @VENDSTTS = VENDSTTS, @CURNCYID = CURNCYID, @TXRGNNUM = TXRGNNUM, @PARVENID = PARVENID, @TRDDISCT = TRDDISCT, @TEN99TYPE = TEN99TYPE, @TEN99BOXNUMBER = TEN99BOXNUMBER, @MINORDER = MINORDER, @PYMTRMID = PYMTRMID, @MINPYTYP = MINPYTYP, @MINPYPCT = MINPYPCT, @MINPYDLR = MINPYDLR, @MXIAFVND = MXIAFVND, @MAXINDLR = MAXINDLR, @COMMENT1 = COMMENT1, @COMMENT2 = COMMENT2, @USERDEF1 = USERDEF1, @USERDEF2 = USERDEF2, @CRLMTDLR = CRLMTDLR, @PYMNTPRI = PYMNTPRI, @KPCALHST = KPCALHST, @KGLDSTHS = KGLDSTHS, @KPERHIST = KPERHIST, @KPTRXHST = KPTRXHST, @HOLD = HOLD, @PTCSHACF = PTCSHACF, @CREDTLMT = CREDTLMT, @WRITEOFF = WRITEOFF, @MXWOFAMT = MXWOFAMT, @SBPPSDED = SBPPSDED, @PPSTAXRT = PPSTAXRT, @DXVARNUM = DXVARNUM, @CRTCOMDT = CRTCOMDT, @CRTEXPDT = CRTEXPDT, @RTOBUTKN = RTOBUTKN, @XPDTOBLG = XPDTOBLG, @PRSPAYEE = PRSPAYEE, @NOTEINDX = NOTEINDX, @CHEKBKID = CHEKBKID, @MODIFDT  = MODIFDT,  @CREATDDT = CREATDDT, @RATETPID = RATETPID, @Revalue_Vendor = Revalue_Vendor, @Post_Results_To = Post_Results_To, @FREEONBOARD = FREEONBOARD, @GOVCRPID = GOVCRPID, @GOVINDID = GOVINDID, @DISGRPER = DISGRPER, @DUEGRPER = DUEGRPER, @DOCFMTID = DOCFMTID, @TaxInvRecvd = TaxInvRecvd, @USERLANG = USERLANG,					 @WithholdingType = WithholdingType,			 @WithholdingFormType =	WithholdingFormType,		 @WithholdingEntityType = WithholdingEntityType,		 @TaxFileNumMode = TaxFileNumMode,			 @BRTHDATE = BRTHDATE,					 @LaborPmtType = LaborPmtType,				 @CCode = CCode,						 @DECLID = DECLID,					 @CBVAT = CBVAT,						 @Workflow_Approval_Status = Workflow_Approval_Status,  @Workflow_Priority = Workflow_Priority,  @VADCD1099 = VADCD1099, @PMAPINDX = PMAPINDX, @PMCSHIDX = PMCSHIDX, @PMDAVIDX = PMDAVIDX, @PMDTKIDX = PMDTKIDX, @PMFINIDX = PMFINIDX, @PMMSCHIX = PMMSCHIX, @PMFRTIDX = PMFRTIDX, @PMTAXIDX = PMTAXIDX, @PMWRTIDX = PMWRTIDX, @PMPRCHIX = PMPRCHIX, @PMRTNGIX = PMRTNGIX, @PMTDSCIX = PMTDSCIX, @ACPURIDX = ACPURIDX, @PURPVIDX = PURPVIDX from  inserted select @PMAPINDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMAPINDX  select @PMCSHIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMCSHIDX select @PMDAVIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMDAVIDX select @PMDTKIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMDTKIDX select @PMFINIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMFINIDX select @PMMSCHIX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMMSCHIX select @PMFRTIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMFRTIDX select @PMTAXIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMTAXIDX select @PMWRTIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMWRTIDX select @PMPRCHIX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMPRCHIX select @PMRTNGIX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMRTNGIX select @PMTDSCIX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PMTDSCIX select @ACPURIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @ACPURIDX select @PURPVIDX_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @PURPVIDX exec @iStatus = DYNAMICS.dbo.TA_ParentInsertPM @MASTERDB, @VENDORID, @VENDNAME, @VNDCHKNM, @VENDSHNM, @VADDCDPR, @VADCDPAD, @VADCDSFR, @VADCDTRO, @VNDCLSID, @VNDCNTCT, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY,     @STATE,    @ZIPCODE,  @COUNTRY, @PHNUMBR1, @PHNUMBR2, @PHONE3,   @FAXNUMBR, @UPSZONE,  @SHIPMTHD, @TAXSCHID, @ACNMVNDR, @TXIDNMBR, @VENDSTTS, @CURNCYID, @TXRGNNUM, @PARVENID, @TRDDISCT, @TEN99TYPE, @TEN99BOXNUMBER, @MINORDER, @PYMTRMID, @MINPYTYP, @MINPYPCT, @MINPYDLR, @MXIAFVND, @MAXINDLR, @COMMENT1, @COMMENT2, @USERDEF1, @USERDEF2, @CRLMTDLR, @PYMNTPRI, @KPCALHST, @KGLDSTHS, @KPERHIST, @KPTRXHST, @HOLD,     @PTCSHACF, @CREDTLMT, @WRITEOFF, @MXWOFAMT, @SBPPSDED, @PPSTAXRT, @DXVARNUM, @CRTCOMDT, @CRTEXPDT, @RTOBUTKN, @XPDTOBLG, @PRSPAYEE, @NOTEINDX, @CHEKBKID, @MODIFDT,  @CREATDDT, @RATETPID, @Revalue_Vendor, @Post_Results_To, @FREEONBOARD, @GOVCRPID, @GOVINDID, @DISGRPER, @DUEGRPER, @DOCFMTID, @TaxInvRecvd, @USERLANG,				 @WithholdingType,			 @WithholdingFormType,			 @WithholdingEntityType,			 @TaxFileNumMode,			 @BRTHDATE,				 @LaborPmtType, @CCode,					 @DECLID,				 @CBVAT,					 @Workflow_Approval_Status,  @Workflow_Priority,  @VADCD1099, @PMAPINDX_ACTNUMST, @PMCSHIDX_ACTNUMST, @PMDAVIDX_ACTNUMST, @PMDTKIDX_ACTNUMST, @PMFINIDX_ACTNUMST, @PMMSCHIX_ACTNUMST, @PMFRTIDX_ACTNUMST, @PMTAXIDX_ACTNUMST, @PMWRTIDX_ACTNUMST, @PMPRCHIX_ACTNUMST, @PMRTNGIX_ACTNUMST, @PMTDSCIX_ACTNUMST, @ACPURIDX_ACTNUMST, @PURPVIDX_ACTNUMST  
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[wfUpdateVendorInfo] on [dbo].[PM00200] for insert,update as  declare @Workflow_Status smallint, @VENDORID char(15) select @Workflow_Status=Workflow_Status from inserted  if UPDATE(Workflow_Status) begin  select @Workflow_Status=Workflow_Status, @VENDORID=VENDORID from inserted  if @Workflow_Status in (4,5,7)   begin  update PM00200 set HOLD=1 where VENDORID=@VENDORID  end  else if @Workflow_Status in (3,6)   begin  update PM00200 set HOLD=0 where VENDORID=@VENDORID  end end    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_PM00200U] ON [dbo].[PM00200] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.PM00200 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.PM00200, inserted WHERE PM00200.VENDORID = inserted.VENDORID END set nocount off    
GO
ALTER TABLE [dbo].[PM00200] ADD CONSTRAINT [CK__PM00200__BRTHDAT__22B3181D] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[PM00200] ADD CONSTRAINT [CK__PM00200__CREATDD__21BEF3E4] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[PM00200] ADD CONSTRAINT [CK__PM00200__CRTCOMD__1EE28739] CHECK ((datepart(hour,[CRTCOMDT])=(0) AND datepart(minute,[CRTCOMDT])=(0) AND datepart(second,[CRTCOMDT])=(0) AND datepart(millisecond,[CRTCOMDT])=(0)))
GO
ALTER TABLE [dbo].[PM00200] ADD CONSTRAINT [CK__PM00200__CRTEXPD__1FD6AB72] CHECK ((datepart(hour,[CRTEXPDT])=(0) AND datepart(minute,[CRTEXPDT])=(0) AND datepart(second,[CRTEXPDT])=(0) AND datepart(millisecond,[CRTEXPDT])=(0)))
GO
ALTER TABLE [dbo].[PM00200] ADD CONSTRAINT [CK__PM00200__MODIFDT__20CACFAB] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PM00200] ADD CONSTRAINT [PKPM00200] PRIMARY KEY NONCLUSTERED  ([VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PM00200] ON [dbo].[PM00200] ([PYMNTPRI], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PM00200] ON [dbo].[PM00200] ([TXRGNNUM], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM00200] ON [dbo].[PM00200] ([USERDEF1], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM00200] ON [dbo].[PM00200] ([VENDNAME], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM00200] ON [dbo].[PM00200] ([VNDCLSID], [VENDORID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VNDCHKNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VENDSHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VADDCDPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VADCDPAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VADCDSFR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VADCDTRO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VNDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VNDCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[PHNUMBR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[PHNUMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[ACNMVNDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[TXIDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[VENDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[PARVENID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[TRDDISCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[TEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[TEN99BOXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00200].[MINORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[MINPYTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[MINPYPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00200].[MINPYDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[MXIAFVND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00200].[MAXINDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00200].[CRLMTDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[PYMNTPRI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[KGLDSTHS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PTCSHACF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[CREDTLMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[WRITEOFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00200].[MXWOFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[SBPPSDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[DXVARNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00200].[CRTCOMDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00200].[CRTEXPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[RTOBUTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[XPDTOBLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PRSPAYEE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMAPINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMCSHIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMDAVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMDTKIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMFINIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMMSCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMFRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMTAXIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMWRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMPRCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMRTNGIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PMTDSCIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[ACPURIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[Revalue_Vendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[Post_Results_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[FREEONBOARD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[GOVCRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[GOVINDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[DOCFMTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[TaxInvRecvd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[USERLANG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[WithholdingType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[WithholdingFormType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[WithholdingEntityType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[TaxFileNumMode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00200].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[LaborPmtType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[CBVAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00200].[Workflow_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00200].[VADCD1099]'
GO
GRANT SELECT ON  [dbo].[PM00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM00200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM00200] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM00200] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM00200] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_purchasing manager]
GO
GRANT SELECT ON  [dbo].[PM00200] TO [rpt_warehouse manager]
GO
