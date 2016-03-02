CREATE TABLE [dbo].[MC40000]
(
[FUNLCURR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FUNCRIDX] [smallint] NOT NULL,
[RPTGCURR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTCRIDX] [smallint] NOT NULL,
[RPTXRATE] [numeric] (19, 7) NOT NULL,
[RPRTCLMD] [smallint] NOT NULL,
[ALOWNWRT] [tinyint] NOT NULL,
[ANWRTPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALWMODRT] [tinyint] NOT NULL,
[MODRTPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALOVEXRT] [tinyint] NOT NULL,
[OVXRTPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AOVRTVAR] [tinyint] NOT NULL,
[OVRTVPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AOVRPTRT] [tinyint] NOT NULL,
[OVRPRPWD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AVGEXRAT] [smallint] NOT NULL,
[DEFFINTP] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFSLSTP] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFPURTP] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MNSUMHST] [tinyint] NOT NULL,
[LSTREVAL] [datetime] NOT NULL,
[LSTPRVAL] [datetime] NOT NULL,
[LSTSRVAL] [datetime] NOT NULL,
[LSTTRXRV] [datetime] NOT NULL,
[LSTSUMRV] [datetime] NOT NULL,
[AVGCLMD] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__MC40000__DEX_ROW__3631FF56] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_MC40000U] ON [dbo].[MC40000] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.MC40000 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.MC40000, inserted WHERE MC40000.FUNLCURR = inserted.FUNLCURR END set nocount off    
GO
ALTER TABLE [dbo].[MC40000] ADD CONSTRAINT [CK__MC40000__LSTPRVA__5026DB83] CHECK ((datepart(hour,[LSTPRVAL])=(0) AND datepart(minute,[LSTPRVAL])=(0) AND datepart(second,[LSTPRVAL])=(0) AND datepart(millisecond,[LSTPRVAL])=(0)))
GO
ALTER TABLE [dbo].[MC40000] ADD CONSTRAINT [CK__MC40000__LSTREVA__511AFFBC] CHECK ((datepart(hour,[LSTREVAL])=(0) AND datepart(minute,[LSTREVAL])=(0) AND datepart(second,[LSTREVAL])=(0) AND datepart(millisecond,[LSTREVAL])=(0)))
GO
ALTER TABLE [dbo].[MC40000] ADD CONSTRAINT [CK__MC40000__LSTSRVA__520F23F5] CHECK ((datepart(hour,[LSTSRVAL])=(0) AND datepart(minute,[LSTSRVAL])=(0) AND datepart(second,[LSTSRVAL])=(0) AND datepart(millisecond,[LSTSRVAL])=(0)))
GO
ALTER TABLE [dbo].[MC40000] ADD CONSTRAINT [CK__MC40000__LSTSUMR__5303482E] CHECK ((datepart(hour,[LSTSUMRV])=(0) AND datepart(minute,[LSTSUMRV])=(0) AND datepart(second,[LSTSUMRV])=(0) AND datepart(millisecond,[LSTSUMRV])=(0)))
GO
ALTER TABLE [dbo].[MC40000] ADD CONSTRAINT [CK__MC40000__LSTTRXR__53F76C67] CHECK ((datepart(hour,[LSTTRXRV])=(0) AND datepart(minute,[LSTTRXRV])=(0) AND datepart(second,[LSTTRXRV])=(0) AND datepart(millisecond,[LSTTRXRV])=(0)))
GO
ALTER TABLE [dbo].[MC40000] ADD CONSTRAINT [PKMC40000] PRIMARY KEY NONCLUSTERED  ([FUNLCURR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC40000] ON [dbo].[MC40000] ([RPTGCURR]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC40000] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[FUNLCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[FUNCRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[RPTGCURR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[RPTCRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC40000].[RPTXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[RPRTCLMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[ALOWNWRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[ANWRTPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[ALWMODRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[MODRTPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[ALOVEXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[OVXRTPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[AOVRTVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[OVRTVPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[AOVRPTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[OVRPRPWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[AVGEXRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[DEFFINTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[DEFSLSTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40000].[DEFPURTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[MNSUMHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC40000].[LSTREVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC40000].[LSTPRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC40000].[LSTSRVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC40000].[LSTTRXRV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC40000].[LSTSUMRV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC40000].[AVGCLMD]'
GO
GRANT SELECT ON  [dbo].[MC40000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC40000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC40000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC40000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MC40000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[MC40000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[MC40000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[MC40000] TO [RAPIDGRP]
GO
