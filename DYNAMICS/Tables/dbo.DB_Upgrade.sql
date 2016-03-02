CREATE TABLE [dbo].[DB_Upgrade]
(
[db_name] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [int] NOT NULL,
[db_verMajor] [int] NOT NULL,
[db_verMinor] [int] NOT NULL,
[db_verBuild] [int] NOT NULL,
[db_verOldMajor] [int] NOT NULL,
[db_verOldMinor] [int] NOT NULL,
[db_verOldBuild] [int] NOT NULL,
[db_status] [int] NOT NULL,
[start_time] [datetime] NOT NULL,
[stop_time] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DB_Upgrade] ADD CONSTRAINT [PKDB_Upgrade] PRIMARY KEY CLUSTERED  ([db_name], [PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DB_Upgrade].[db_name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[db_verMajor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[db_verMinor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[db_verBuild]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[db_verOldMajor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[db_verOldMinor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[db_verOldBuild]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DB_Upgrade].[db_status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DB_Upgrade].[start_time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DB_Upgrade].[stop_time]'
GO
GRANT SELECT ON  [dbo].[DB_Upgrade] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DB_Upgrade] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DB_Upgrade] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DB_Upgrade] TO [DYNGRP]
GO
