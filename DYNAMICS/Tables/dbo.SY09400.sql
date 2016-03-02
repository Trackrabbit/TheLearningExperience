CREATE TABLE [dbo].[SY09400]
(
[DICTID] [smallint] NOT NULL,
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECRESTYPE] [smallint] NOT NULL,
[TYPESTR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECURITYID] [int] NOT NULL,
[RESTECHNAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSPLNAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[Series_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AvailLmtdUsrs] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY09400] ADD CONSTRAINT [PKSY09400] PRIMARY KEY NONCLUSTERED  ([DICTID], [SECRESTYPE], [SECURITYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY09400].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09400].[PRODNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY09400].[SECRESTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09400].[TYPESTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY09400].[SECURITYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09400].[RESTECHNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09400].[DSPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY09400].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY09400].[Series_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY09400].[AvailLmtdUsrs]'
GO
GRANT SELECT ON  [dbo].[SY09400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY09400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY09400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY09400] TO [DYNGRP]
GO
