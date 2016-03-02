CREATE TABLE [dbo].[GPS_SQL_Error_Codes]
(
[Language_ID] [smallint] NOT NULL,
[CODE] [int] NOT NULL,
[SPROC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMESSAGE] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GPS_SQL_Error_Codes] ADD CONSTRAINT [PKGPS_SQL_Error_Codes] PRIMARY KEY NONCLUSTERED  ([Language_ID], [CODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GPS_SQL_Error_Codes].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GPS_SQL_Error_Codes].[CODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GPS_SQL_Error_Codes].[SPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GPS_SQL_Error_Codes].[SMESSAGE]'
GO
GRANT SELECT ON  [dbo].[GPS_SQL_Error_Codes] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GPS_SQL_Error_Codes] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GPS_SQL_Error_Codes] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GPS_SQL_Error_Codes] TO [DYNGRP]
GO
