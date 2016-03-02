CREATE TABLE [dbo].[SY40102]
(
[CLOSED] [tinyint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[ODESCTN] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FORIGIN] [tinyint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[PERIODDT] [datetime] NOT NULL,
[PERNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSERIES_1] [tinyint] NOT NULL,
[PSERIES_2] [tinyint] NOT NULL,
[PSERIES_3] [tinyint] NOT NULL,
[PSERIES_4] [tinyint] NOT NULL,
[PSERIES_5] [tinyint] NOT NULL,
[PSERIES_6] [tinyint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40102] ADD CONSTRAINT [CK__SY40102__PERIODD__0D6FE0E5] CHECK ((datepart(hour,[PERIODDT])=(0) AND datepart(minute,[PERIODDT])=(0) AND datepart(second,[PERIODDT])=(0) AND datepart(millisecond,[PERIODDT])=(0)))
GO
ALTER TABLE [dbo].[SY40102] ADD CONSTRAINT [PKSY40102] PRIMARY KEY NONCLUSTERED  ([FORIGIN], [YEAR1], [PERIODID], [SERIES], [ODESCTN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY40102] ON [dbo].[SY40102] ([FORIGIN], [PERIODDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY40102] ON [dbo].[SY40102] ([FORIGIN], [YEAR1], [PERNAME], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[CLOSED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40102].[ODESCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[FORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40102].[PERIODDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40102].[PERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[PSERIES_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[PSERIES_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[PSERIES_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[PSERIES_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[PSERIES_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[PSERIES_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40102].[YEAR1]'
GO
GRANT SELECT ON  [dbo].[SY40102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40102] TO [DYNGRP]
GO
