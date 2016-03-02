CREATE TABLE [dbo].[RM00201]
(
[CLASSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLASDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRLMTTYP] [smallint] NOT NULL,
[CRLMTAMT] [numeric] (19, 5) NOT NULL,
[CRLMTPER] [smallint] NOT NULL,
[CRLMTPAM] [numeric] (19, 5) NOT NULL,
[DEFLTCLS] [tinyint] NOT NULL,
[BALNCTYP] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTDISC] [smallint] NOT NULL,
[CSTPRLVL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINPYTYP] [smallint] NOT NULL,
[MINPYDLR] [numeric] (19, 5) NOT NULL,
[MINPYPCT] [smallint] NOT NULL,
[MXWOFTYP] [smallint] NOT NULL,
[MXWROFAM] [numeric] (19, 5) NOT NULL,
[FINCHARG] [tinyint] NOT NULL,
[FNCHATYP] [smallint] NOT NULL,
[FINCHDLR] [numeric] (19, 5) NOT NULL,
[FNCHPCNT] [smallint] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCACTY] [smallint] NOT NULL,
[RMCSHACC] [int] NOT NULL,
[RMARACC] [int] NOT NULL,
[RMCOSACC] [int] NOT NULL,
[RMIVACC] [int] NOT NULL,
[RMSLSACC] [int] NOT NULL,
[RMAVACC] [int] NOT NULL,
[RMTAKACC] [int] NOT NULL,
[RMFCGACC] [int] NOT NULL,
[RMWRACC] [int] NOT NULL,
[RMSORACC] [int] NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTCYCL] [smallint] NOT NULL,
[SNDSTMNT] [tinyint] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPDSTHST] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[Revalue_Customer] [tinyint] NOT NULL,
[Post_Results_To] [smallint] NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[ORDERFULFILLDEFAULT] [smallint] NOT NULL,
[CUSTPRIORITY] [smallint] NOT NULL,
[RMOvrpymtWrtoffAcctIdx] [int] NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[INCLUDEINDP] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00201] ADD CONSTRAINT [CK__RM00201__CREATDD__6DD739FB] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[RM00201] ADD CONSTRAINT [CK__RM00201__MODIFDT__6ECB5E34] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[RM00201] ADD CONSTRAINT [PKRM00201] PRIMARY KEY NONCLUSTERED  ([CLASSID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00201] ON [dbo].[RM00201] ([CLASDSCR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM00201] ON [dbo].[RM00201] ([DEFLTCLS], [CLASSID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[CLASSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[CLASDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[CRLMTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00201].[CRLMTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[CRLMTPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00201].[CRLMTPAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[DEFLTCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[BALNCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[BANKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[CUSTDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[CSTPRLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[MINPYTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00201].[MINPYDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[MINPYPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[MXWOFTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00201].[MXWROFAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[FINCHARG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[FNCHATYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00201].[FINCHDLR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[FNCHPCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[DEFCACTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMCSHACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMARACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMCOSACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMIVACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMSLSACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMAVACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMTAKACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMFCGACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMWRACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMSORACC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00201].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[STMTCYCL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[SNDSTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[KPDSTHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00201].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00201].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00201].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[Revalue_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[Post_Results_To]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[DISGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[DUEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[ORDERFULFILLDEFAULT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[CUSTPRIORITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[RMOvrpymtWrtoffAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[CBVAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00201].[INCLUDEINDP]'
GO
GRANT SELECT ON  [dbo].[RM00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00201] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00201] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM00201] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM00201] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM00201] TO [RAPIDGRP]
GO
