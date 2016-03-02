CREATE TABLE [dbo].[RM00101]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CPRCSTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHRTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPSZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRBTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STADDRCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRLMTTYP] [smallint] NOT NULL,
[CRLMTAMT] [numeric] (19, 5) NOT NULL,
[CRLMTPER] [smallint] NOT NULL,
[CRLMTPAM] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTDISC] [smallint] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINPYTYP] [smallint] NOT NULL,
[MINPYDLR] [numeric] (19, 5) NOT NULL,
[MINPYPCT] [smallint] NOT NULL,
[FNCHATYP] [smallint] NOT NULL,
[FNCHPCNT] [smallint] NOT NULL,
[FINCHDLR] [numeric] (19, 5) NOT NULL,
[MXWOFTYP] [smallint] NOT NULL,
[MXWROFAM] [numeric] (19, 5) NOT NULL,
[COMMENT1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BALNCTYP] [smallint] NOT NULL,
[STMTCYCL] [smallint] NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKBRNCH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCACTY] [smallint] NOT NULL,
[RMCSHACC] [int] NOT NULL,
[RMARACC] [int] NOT NULL,
[RMSLSACC] [int] NOT NULL,
[RMIVACC] [int] NOT NULL,
[RMCOSACC] [int] NOT NULL,
[RMTAKACC] [int] NOT NULL,
[RMAVACC] [int] NOT NULL,
[RMFCGACC] [int] NOT NULL,
[RMWRACC] [int] NOT NULL,
[RMSORACC] [int] NOT NULL,
[FRSTINDT] [datetime] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[HOLD] [tinyint] NOT NULL,
[CRCARDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCRDNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCRDXPDT] [datetime] NOT NULL,
[KPDSTHST] [tinyint] NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[Revalue_Customer] [tinyint] NOT NULL,
[Post_Results_To] [smallint] NOT NULL,
[FINCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOVCRPID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOVINDID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[DOCFMTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Send_Email_Statements] [tinyint] NOT NULL,
[USERLANG] [smallint] NOT NULL,
[GPSFOINTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTEGRATIONSOURCE] [smallint] NOT NULL,
[INTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDERFULFILLDEFAULT] [smallint] NOT NULL,
[CUSTPRIORITY] [smallint] NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMOvrpymtWrtoffAcctIdx] [int] NOT NULL,
[SHIPCOMPLETE] [tinyint] NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[INCLUDEINDP] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__RM00101__DEX_ROW__560A9D62] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_RM00101Del] on [dbo].[RM00101] for delete as  declare @mstrID int,  @status smallint  select @mstrID = 0,  @status = 0  select @mstrID = DEX_ROW_ID from deleted   exec aagDelMstrRecord @mstrID, 2, 0, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_RM00101Ins] on [dbo].[RM00101] for insert as  declare @mstrID int,  @status smallint  select @mstrID = 0,  @status = 0  select @mstrID = DEX_ROW_ID from inserted   exec aagInsMstrRecord @mstrID, 2, 0, @status out    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[taCustomerInsert] on [dbo].[RM00101] for insert,update as declare @iStatus  int declare @MASTERDB char(15) declare	@CUSTNMBR char(15) declare	@CUSTNAME char(65) declare	@CUSTCLAS char(15) declare	@CPRCSTNM char(15) declare	@CNTCPRSN char(31) declare	@STMTNAME char(65) declare	@SHRTNAME char(15) declare	@ADRSCODE char(15) declare	@UPSZONE  char(3)  declare	@SHIPMTHD char(15) declare	@TAXSCHID char(15) declare	@ADDRESS1 char(31) declare	@ADDRESS2 char(31) declare	@ADDRESS3 char(31) declare	@COUNTRY  char(21) declare	@CITY     char(31) declare	@STATE    char(29) declare	@ZIP      char(11) declare	@PHONE1   char(21) declare	@PHONE2   char(21) declare	@PHONE3   char(21) declare	@FAX      char(21) declare	@PRBTADCD char(15) declare	@PRSTADCD char(15) declare	@STADDRCD char(15) declare	@SLPRSNID char(15) declare	@CHEKBKID char(15) declare	@PYMTRMID char(21) declare	@CRLMTTYP smallint declare	@CRLMTAMT numeric (19,5) declare	@CRLMTPER smallint declare	@CRLMTPAM numeric (19,5) declare	@CURNCYID char(15) declare	@RATETPID char(15) declare	@CUSTDISC smallint declare	@PRCLEVEL char(11) declare	@MINPYTYP smallint declare	@MINPYDLR numeric (19,5) declare	@MINPYPCT smallint declare	@FNCHATYP smallint declare	@FNCHPCNT smallint declare	@FINCHDLR numeric (19,5) declare	@MXWOFTYP smallint declare	@MXWROFAM numeric (19,5) declare	@COMMENT1 char(31) declare	@COMMENT2 char(31) declare	@USERDEF1 char(21) declare	@USERDEF2 char(21) declare	@TAXEXMT1 char(25) declare	@TAXEXMT2 char(25) declare	@TXRGNNUM char(25) declare	@BALNCTYP smallint declare	@STMTCYCL smallint declare	@BANKNAME char(31) declare	@BNKBRNCH char(21) declare	@SALSTERR char(15) declare	@DEFCACTY smallint declare	@FRSTINDT datetime declare	@INACTIVE tinyint declare	@HOLD     tinyint declare	@CRCARDID char(15) declare	@CRCRDNUM char(21) declare	@CCRDXPDT datetime declare	@KPDSTHST tinyint declare	@KPCALHST tinyint declare	@KPERHIST tinyint declare	@KPTRXHST tinyint declare	@NOTEINDX numeric(19,5) declare	@CREATDDT datetime declare	@MODIFDT  datetime declare	@Revalue_Customer  tinyint declare	@Post_Results_To   smallint declare	@FINCHID  char(15) declare	@GOVCRPID char(31) declare	@GOVINDID char(31) declare	@DISGRPER smallint declare	@DUEGRPER smallint declare	@DOCFMTID char(15) declare @RMCSHACC int declare @RMARACC  int declare @RMSLSACC int declare @RMIVACC  int declare @RMCOSACC int declare @RMTAKACC int declare @RMAVACC  int declare @RMFCGACC int declare @RMWRACC  int declare @RMSORACC int				 declare @Send_Email_Statements tinyint		 declare @USERLANG smallint			 declare @GPSFOINTEGRATIONID char(31)		 declare @INTEGRATIONSOURCE smallint		 declare @INTEGRATIONID char(31)			 declare @ORDERFULFILLDEFAULT smallint		 declare @CUSTPRIORITY smallint			 declare @CCode char(6)				 declare @DECLID char(15)			 declare @RMOvrpymtWrtoffAcctIdx int		 declare @SHIPCOMPLETE tinyint			 declare @CBVAT tinyint				 declare @INCLUDEINDP tinyint			 declare @RMCSHACC_ACTNUMST char(129) declare @RMARACC_ACTNUMST  char(129) declare @RMSLSACC_ACTNUMST char(129) declare @RMIVACC_ACTNUMST  char(129) declare @RMCOSACC_ACTNUMST char(129) declare @RMTAKACC_ACTNUMST char(129) declare @RMAVACC_ACTNUMST  char(129) declare @RMFCGACC_ACTNUMST char(129) declare @RMWRACC_ACTNUMST  char(129) declare @RMSORACC_ACTNUMST char(129)		 declare @RMOvrpymtWrtoffAcctIdx_ACTNUMST char(129)  select  @MASTERDB = DB_Name(), @CUSTNMBR  = CUSTNMBR, @CUSTNAME  = CUSTNAME, @CUSTCLAS  = CUSTCLAS, @CPRCSTNM  = CPRCSTNM, @CNTCPRSN  = CNTCPRSN, @STMTNAME  = STMTNAME, @SHRTNAME  = SHRTNAME, @ADRSCODE  = ADRSCODE, @UPSZONE   = UPSZONE, @SHIPMTHD  = SHIPMTHD, @TAXSCHID  = TAXSCHID, @ADDRESS1  = ADDRESS1, @ADDRESS2  = ADDRESS2, @ADDRESS3  = ADDRESS3, @COUNTRY   = COUNTRY, @CITY      = CITY, @STATE     = STATE, @ZIP       = ZIP, @PHONE1    = PHONE1, @PHONE2    = PHONE2, @PHONE3    = PHONE3, @FAX       = FAX, @PRBTADCD  = PRBTADCD, @PRSTADCD  = PRSTADCD, @STADDRCD  = STADDRCD, @SLPRSNID  = SLPRSNID, @CHEKBKID  = CHEKBKID, @PYMTRMID  = PYMTRMID, @CRLMTTYP  = CRLMTTYP, @CRLMTAMT  = CRLMTAMT, @CRLMTPER  = CRLMTPER, @CRLMTPAM  = CRLMTPAM, @CURNCYID  = CURNCYID, @RATETPID  = RATETPID, @CUSTDISC  = CUSTDISC, @PRCLEVEL  = PRCLEVEL, @MINPYTYP  = MINPYTYP, @MINPYDLR  = MINPYDLR, @MINPYPCT  = MINPYPCT, @FNCHATYP  = FNCHATYP, @FNCHPCNT  = FNCHPCNT, @FINCHDLR  = FINCHDLR, @MXWOFTYP  = MXWOFTYP, @MXWROFAM  = MXWROFAM, @COMMENT1  = COMMENT1, @COMMENT2  = COMMENT2, @USERDEF1  = USERDEF1, @USERDEF2  = USERDEF2, @TAXEXMT1  = TAXEXMT1, @TAXEXMT2  = TAXEXMT2, @TXRGNNUM  = TXRGNNUM, @BALNCTYP  = BALNCTYP, @STMTCYCL  = STMTCYCL, @BANKNAME  = BANKNAME, @BNKBRNCH  = BNKBRNCH, @SALSTERR  = SALSTERR, @DEFCACTY  = DEFCACTY, @FRSTINDT  = FRSTINDT, @INACTIVE  = INACTIVE, @HOLD      = HOLD, @CRCARDID  = CRCARDID, @CRCRDNUM  = CRCRDNUM, @CCRDXPDT  = CCRDXPDT, @KPDSTHST  = KPDSTHST, @KPCALHST  = KPCALHST, @KPERHIST  = KPERHIST, @KPTRXHST  = KPTRXHST, @NOTEINDX  = NOTEINDX, @CREATDDT  = CREATDDT, @MODIFDT   = MODIFDT, @Revalue_Customer = Revalue_Customer, @Post_Results_To  = Post_Results_To, @FINCHID   = FINCHID, @GOVCRPID  = GOVCRPID, @GOVINDID  = GOVINDID, @DISGRPER  = DISGRPER, @DUEGRPER  = DUEGRPER, @DOCFMTID  = DOCFMTID, @Send_Email_Statements = Send_Email_Statements,		 @USERLANG = USERLANG,					 @GPSFOINTEGRATIONID = GPSFOINTEGRATIONID,		 @INTEGRATIONSOURCE = INTEGRATIONSOURCE,			 @INTEGRATIONID = INTEGRATIONID,				 @ORDERFULFILLDEFAULT = ORDERFULFILLDEFAULT,		 @CUSTPRIORITY =	CUSTPRIORITY,				 @CCode = CCode,						 @DECLID = DECLID,					 @SHIPCOMPLETE = SHIPCOMPLETE,				 @CBVAT = CBVAT,						 @INCLUDEINDP = INCLUDEINDP,				 @RMCSHACC = RMCSHACC, @RMARACC  = RMARACC, @RMSLSACC = RMSLSACC, @RMIVACC  = RMIVACC, @RMCOSACC = RMCOSACC, @RMTAKACC = RMTAKACC, @RMAVACC  = RMAVACC, @RMFCGACC = RMFCGACC, @RMWRACC  = RMWRACC, @RMSORACC = RMSORACC,					 @RMOvrpymtWrtoffAcctIdx = RMOvrpymtWrtoffAcctIdx	 from  inserted select @RMCSHACC_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @RMCSHACC select @RMARACC_ACTNUMST  = ACTNUMST from GL00105 where ACTINDX = @RMARACC select @RMSLSACC_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @RMSLSACC select @RMIVACC_ACTNUMST  = ACTNUMST from GL00105 where ACTINDX = @RMIVACC select @RMCOSACC_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @RMCOSACC select @RMTAKACC_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @RMTAKACC select @RMAVACC_ACTNUMST  = ACTNUMST from GL00105 where ACTINDX = @RMAVACC select @RMFCGACC_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @RMFCGACC select @RMWRACC_ACTNUMST  = ACTNUMST from GL00105 where ACTINDX = @RMWRACC select @RMSORACC_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @RMSORACC		 select @RMOvrpymtWrtoffAcctIdx_ACTNUMST = ACTNUMST from GL00105 where ACTINDX = @RMOvrpymtWrtoffAcctIdx  exec @iStatus = DYNAMICS.dbo.TA_ParentInsertRM @MASTERDB, @CUSTNMBR, @CUSTNAME, @CUSTCLAS, @CPRCSTNM, @CNTCPRSN, @STMTNAME, @SHRTNAME, @ADRSCODE, @UPSZONE, @SHIPMTHD, @TAXSCHID, @ADDRESS1, @ADDRESS2, @ADDRESS3, @COUNTRY, @CITY, @STATE, @ZIP, @PHONE1, @PHONE2, @PHONE3, @FAX, @PRBTADCD, @PRSTADCD, @STADDRCD, @SLPRSNID, @CHEKBKID, @PYMTRMID, @CRLMTTYP, @CRLMTAMT, @CRLMTPER, @CRLMTPAM, @CURNCYID, @RATETPID, @CUSTDISC, @PRCLEVEL, @MINPYTYP, @MINPYDLR, @MINPYPCT, @FNCHATYP, @FNCHPCNT, @FINCHDLR, @MXWOFTYP, @MXWROFAM, @COMMENT1, @COMMENT2, @USERDEF1, @USERDEF2, @TAXEXMT1, @TAXEXMT2, @TXRGNNUM, @BALNCTYP, @STMTCYCL, @BANKNAME, @BNKBRNCH, @SALSTERR, @DEFCACTY, @FRSTINDT, @INACTIVE, @HOLD, @CRCARDID, @CRCRDNUM, @CCRDXPDT, @KPDSTHST, @KPCALHST, @KPERHIST, @KPTRXHST, @NOTEINDX, @CREATDDT, @MODIFDT, @Revalue_Customer, @Post_Results_To, @FINCHID, @GOVCRPID, @GOVINDID, @DISGRPER, @DUEGRPER, @DOCFMTID, @Send_Email_Statements,			 @USERLANG,				 @GPSFOINTEGRATIONID,			 @INTEGRATIONSOURCE,			 @INTEGRATIONID,				 @ORDERFULFILLDEFAULT, 			 @CUSTPRIORITY,				 @CCode,					 @DECLID,				 @SHIPCOMPLETE,				 @CBVAT,					 @INCLUDEINDP,				 @RMCSHACC_ACTNUMST, @RMARACC_ACTNUMST, @RMSLSACC_ACTNUMST, @RMIVACC_ACTNUMST, @RMCOSACC_ACTNUMST, @RMTAKACC_ACTNUMST, @RMAVACC_ACTNUMST, @RMFCGACC_ACTNUMST, @RMWRACC_ACTNUMST, @RMSORACC_ACTNUMST,			 @RMOvrpymtWrtoffAcctIdx_ACTNUMST	 
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_RM00101U] ON [dbo].[RM00101] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.RM00101 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM00101, inserted WHERE RM00101.CUSTNMBR = inserted.CUSTNMBR END set nocount off    
GO
ALTER TABLE [dbo].[RM00101] WITH NOCHECK ADD CONSTRAINT [RM_Customer_MSTR_NA] CHECK (([CPRCSTNM]<>'' AND [BALNCTYP]=(0) OR [CPRCSTNM]='' AND [BALNCTYP]=(1) OR [CPRCSTNM]='' AND [BALNCTYP]=(0)))
GO
ALTER TABLE [dbo].[RM00101] ADD CONSTRAINT [CK__RM00101__CCRDXPD__541767F8] CHECK ((datepart(hour,[CCRDXPDT])=(0) AND datepart(minute,[CCRDXPDT])=(0) AND datepart(second,[CCRDXPDT])=(0) AND datepart(millisecond,[CCRDXPDT])=(0)))
GO
ALTER TABLE [dbo].[RM00101] ADD CONSTRAINT [CK__RM00101__CREATDD__550B8C31] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[RM00101] ADD CONSTRAINT [CK__RM00101__FRSTIND__55FFB06A] CHECK ((datepart(hour,[FRSTINDT])=(0) AND datepart(minute,[FRSTINDT])=(0) AND datepart(second,[FRSTINDT])=(0) AND datepart(millisecond,[FRSTINDT])=(0)))
GO
ALTER TABLE [dbo].[RM00101] ADD CONSTRAINT [CK__RM00101__MODIFDT__56F3D4A3] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[RM00101] ADD CONSTRAINT [PKRM00101] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7RM00101] ON [dbo].[RM00101] ([CPRCSTNM], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM00101] ON [dbo].[RM00101] ([CUSTCLAS], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00101] ON [dbo].[RM00101] ([CUSTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6RM00101] ON [dbo].[RM00101] ([SALSTERR], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM00101] ON [dbo].[RM00101] ([SLPRSNID], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8RM00101] ON [dbo].[RM00101] ([TXRGNNUM], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM00101] ON [dbo].[RM00101] ([USERDEF1], [CUSTNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CUSTCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CPRCSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[STMTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[SHRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[PRBTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[STADDRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[CRLMTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00101].[CRLMTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[CRLMTPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00101].[CRLMTPAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[CUSTDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[MINPYTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00101].[MINPYDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[MINPYPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[FNCHATYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[FNCHPCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00101].[FINCHDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[MXWOFTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00101].[MXWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[BALNCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[STMTCYCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[BANKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[BNKBRNCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[DEFCACTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMCSHACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMARACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMSLSACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMIVACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMCOSACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMTAKACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMAVACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMFCGACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMWRACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMSORACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00101].[FRSTINDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CRCARDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CRCRDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00101].[CCRDXPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[KPDSTHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00101].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00101].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[Revalue_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[Post_Results_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[FINCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[GOVCRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[GOVINDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[DOCFMTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[Send_Email_Statements]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[USERLANG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[GPSFOINTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[INTEGRATIONSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[INTEGRATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[ORDERFULFILLDEFAULT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[CUSTPRIORITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00101].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[RMOvrpymtWrtoffAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[SHIPCOMPLETE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[CBVAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00101].[INCLUDEINDP]'
GO
GRANT SELECT ON  [dbo].[RM00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00101] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM00101] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM00101] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM00101] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[RM00101] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[RM00101] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[RM00101] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[RM00101] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[RM00101] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[RM00101] TO [rpt_order processor]
GO
