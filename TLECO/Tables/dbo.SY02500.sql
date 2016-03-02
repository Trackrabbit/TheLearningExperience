CREATE TABLE [dbo].[SY02500]
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
[TIME1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY02500] ADD CONSTRAINT [CK__SY02500__TIME1__3F3C46A3] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY02500] ADD CONSTRAINT [CK__SY02500__DATEDON__3E48226A] CHECK ((datepart(hour,[DATEDONE])=(0) AND datepart(minute,[DATEDONE])=(0) AND datepart(second,[DATEDONE])=(0) AND datepart(millisecond,[DATEDONE])=(0)))
GO
ALTER TABLE [dbo].[SY02500] ADD CONSTRAINT [PKSY02500] PRIMARY KEY NONCLUSTERED  ([ENDTYPE], [SERIES], [MODULE1], [INDEX1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY02500] ON [dbo].[SY02500] ([ENDTYPE], [SERIES], [MODULE1], [INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02500].[ENDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02500].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02500].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02500].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02500].[RUTINAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY02500].[DATEDONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02500].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02500].[PALCMDTP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02500].[PALETCMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY02500].[APLICFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY02500].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY02500].[TIME1]'
GO
GRANT SELECT ON  [dbo].[SY02500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY02500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY02500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY02500] TO [DYNGRP]
GO
