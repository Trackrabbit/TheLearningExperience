CREATE TABLE [dbo].[SY02700]
(
[ENDTYPE] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[MODULE1] [smallint] NOT NULL,
[INDEX1] [smallint] NOT NULL,
[RUTINAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEDONE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PALCMDTP] [smallint] NOT NULL,
[PALETCMD] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APLICFIL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY02700] ADD CONSTRAINT [CK__SY02700__DATEDON__14270015] CHECK ((datepart(hour,[DATEDONE])=(0) AND datepart(minute,[DATEDONE])=(0) AND datepart(second,[DATEDONE])=(0) AND datepart(millisecond,[DATEDONE])=(0)))
GO
ALTER TABLE [dbo].[SY02700] ADD CONSTRAINT [PKSY02700] PRIMARY KEY NONCLUSTERED  ([ENDTYPE], [SERIES], [MODULE1], [INDEX1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY02700] ON [dbo].[SY02700] ([ENDTYPE], [SERIES], [MODULE1], [INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02700].[ENDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02700].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02700].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02700].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02700].[RUTINAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY02700].[DATEDONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02700].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02700].[PALCMDTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02700].[PALETCMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02700].[APLICFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02700].[DICTID]'
GO
GRANT SELECT ON  [dbo].[SY02700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY02700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY02700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY02700] TO [DYNGRP]
GO
