CREATE TABLE [dbo].[PM00100]
(
[VNDCLSID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCLDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFLTCLS] [tinyint] NOT NULL,
[MXIAFVND] [smallint] NOT NULL,
[MXINVAMT] [numeric] (19, 5) NOT NULL,
[WRITEOFF] [smallint] NOT NULL,
[CREDTLMT] [smallint] NOT NULL,
[TEN99TYPE] [smallint] NOT NULL,
[PTCSHACF] [smallint] NOT NULL,
[MXWOFAMT] [numeric] (19, 5) NOT NULL,
[MINORDER] [numeric] (19, 5) NOT NULL,
[CRLMTDLR] [numeric] (19, 5) NOT NULL,
[PYMNTPRI] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINPYTYP] [smallint] NOT NULL,
[MINPYDLR] [numeric] (19, 5) NOT NULL,
[MINPYPCT] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KGLDSTHS] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[TRDDISCT] [smallint] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Revalue_Vendor] [tinyint] NOT NULL,
[Post_Results_To] [smallint] NOT NULL,
[FREEONBOARD] [smallint] NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[TaxInvRecvd] [tinyint] NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM00100] ADD CONSTRAINT [CK__PM00100__CREATDD__0A537D18] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[PM00100] ADD CONSTRAINT [CK__PM00100__MODIFDT__0B47A151] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PM00100] ADD CONSTRAINT [PKPM00100] PRIMARY KEY NONCLUSTERED  ([VNDCLSID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM00100] ON [dbo].[PM00100] ([DEFLTCLS], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM00100] ON [dbo].[PM00100] ([VNDCLDSC], [VNDCLSID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[VNDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[VNDCLDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[DEFLTCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[MXIAFVND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00100].[MXINVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[WRITEOFF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[CREDTLMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[TEN99TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PTCSHACF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00100].[MXWOFAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00100].[MINORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00100].[CRLMTDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[PYMNTPRI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[MINPYTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM00100].[MINPYDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[MINPYPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[KGLDSTHS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[TRDDISCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMAPINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMCSHIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMDAVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMDTKIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMFINIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMMSCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMFRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMTAXIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMWRTIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMPRCHIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMRTNGIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PMTDSCIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[ACPURIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00100].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[Revalue_Vendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[Post_Results_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[FREEONBOARD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[TaxInvRecvd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00100].[CBVAT]'
GO
GRANT SELECT ON  [dbo].[PM00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM00100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM00100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM00100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM00100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM00100] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[PM00100] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[PM00100] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[PM00100] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[PM00100] TO [rpt_executive]
GO
