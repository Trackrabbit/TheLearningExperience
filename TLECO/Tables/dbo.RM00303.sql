CREATE TABLE [dbo].[RM00303]
(
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLTERDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMGRFNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMGRMNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMGRLNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTTODT] [numeric] (19, 5) NOT NULL,
[TTLCOMTD] [numeric] (19, 5) NOT NULL,
[TTLCOMLY] [numeric] (19, 5) NOT NULL,
[NCOMSLYR] [numeric] (19, 5) NOT NULL,
[COMSLLYR] [numeric] (19, 5) NOT NULL,
[CSTLSTYR] [numeric] (19, 5) NOT NULL,
[COMSLTDT] [numeric] (19, 5) NOT NULL,
[NCOMSLTD] [numeric] (19, 5) NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__RM00303__DEX_ROW__6A9BA5F4] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_RM00303U] ON [dbo].[RM00303] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.RM00303 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.RM00303, inserted WHERE RM00303.SALSTERR = inserted.SALSTERR END set nocount off    
GO
ALTER TABLE [dbo].[RM00303] ADD CONSTRAINT [CK__RM00303__CREATDD__7948ECA7] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[RM00303] ADD CONSTRAINT [CK__RM00303__MODIFDT__7A3D10E0] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[RM00303] ADD CONSTRAINT [PKRM00303] PRIMARY KEY NONCLUSTERED  ([SALSTERR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM00303] ON [dbo].[RM00303] ([SLTERDSC], [SALSTERR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00303] ON [dbo].[RM00303] ([STMGRLNM], [STMGRFNM], [STMGRMNM], [SALSTERR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00303].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00303].[SLTERDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00303].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00303].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00303].[STMGRFNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00303].[STMGRMNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00303].[STMGRLNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00303].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[COSTTODT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[TTLCOMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[TTLCOMLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[NCOMSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[COMSLLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[CSTLSTYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[COMSLTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[NCOMSLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00303].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00303].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00303].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00303].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00303].[CREATDDT]'
GO
GRANT SELECT ON  [dbo].[RM00303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00303] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00303] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM00303] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM00303] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM00303] TO [RAPIDGRP]
GO
