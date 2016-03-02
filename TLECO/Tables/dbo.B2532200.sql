CREATE TABLE [dbo].[B2532200]
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
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2532200] ADD CONSTRAINT [CK__B2532200__BRTHDA__0553C6AD] CHECK ((datepart(hour,[BRTHDATE])=(0) AND datepart(minute,[BRTHDATE])=(0) AND datepart(second,[BRTHDATE])=(0) AND datepart(millisecond,[BRTHDATE])=(0)))
GO
ALTER TABLE [dbo].[B2532200] ADD CONSTRAINT [CK__B2532200__CREATD__045FA274] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[B2532200] ADD CONSTRAINT [CK__B2532200__CRTCOM__018335C9] CHECK ((datepart(hour,[CRTCOMDT])=(0) AND datepart(minute,[CRTCOMDT])=(0) AND datepart(second,[CRTCOMDT])=(0) AND datepart(millisecond,[CRTCOMDT])=(0)))
GO
ALTER TABLE [dbo].[B2532200] ADD CONSTRAINT [CK__B2532200__CRTEXP__02775A02] CHECK ((datepart(hour,[CRTEXPDT])=(0) AND datepart(minute,[CRTEXPDT])=(0) AND datepart(second,[CRTEXPDT])=(0) AND datepart(millisecond,[CRTEXPDT])=(0)))
GO
ALTER TABLE [dbo].[B2532200] ADD CONSTRAINT [CK__B2532200__MODIFD__036B7E3B] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B2532200] ADD CONSTRAINT [PKB2532200] PRIMARY KEY NONCLUSTERED  ([USERID], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B2532200] ON [dbo].[B2532200] ([USERID], [PYMNTPRI], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B2532200] ON [dbo].[B2532200] ([USERID], [TXRGNNUM], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2532200] ON [dbo].[B2532200] ([USERID], [USERDEF1], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2532200] ON [dbo].[B2532200] ([USERID], [VENDNAME], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2532200] ON [dbo].[B2532200] ([USERID], [VNDCLSID], [VENDORID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VNDCHKNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VENDSHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VADDCDPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VADCDPAD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VADCDSFR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VADCDTRO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VNDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[VNDCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[PHNUMBR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[PHNUMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[ACNMVNDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[TXIDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[VENDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[PARVENID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[TRDDISCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[TEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2532200].[MINORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[MINPYTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[MINPYPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2532200].[MINPYDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[MXIAFVND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2532200].[MAXINDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2532200].[CRLMTDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[PYMNTPRI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[KGLDSTHS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PTCSHACF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[CREDTLMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[WRITEOFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2532200].[MXWOFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[SBPPSDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[DXVARNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2532200].[CRTCOMDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2532200].[CRTEXPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[RTOBUTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[XPDTOBLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PRSPAYEE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMAPINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMCSHIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMDAVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMDTKIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMFINIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMMSCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMFRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMTAXIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMWRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMPRCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMRTNGIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PMTDSCIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[ACPURIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2532200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2532200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2532200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[Revalue_Vendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[Post_Results_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[FREEONBOARD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[GOVCRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[GOVINDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[DOCFMTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[TaxInvRecvd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[USERLANG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[WithholdingType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[WithholdingFormType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[WithholdingEntityType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[TaxFileNumMode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2532200].[BRTHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2532200].[LaborPmtType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2532200].[USERID]'
GO
GRANT SELECT ON  [dbo].[B2532200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2532200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2532200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2532200] TO [DYNGRP]
GO
