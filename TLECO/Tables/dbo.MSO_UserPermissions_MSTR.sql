CREATE TABLE [dbo].[MSO_UserPermissions_MSTR]
(
[MSO_UserID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_UserPermissionViewCC] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSO_UserPermissions_MSTR] ADD CONSTRAINT [PKMSO_UserPermissions_MSTR] PRIMARY KEY CLUSTERED  ([MSO_UserID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MSO_UserPermissions_MSTR].[MSO_UserID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MSO_UserPermissions_MSTR].[MSO_UserPermissionViewCC]'
GO
GRANT SELECT ON  [dbo].[MSO_UserPermissions_MSTR] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MSO_UserPermissions_MSTR] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MSO_UserPermissions_MSTR] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MSO_UserPermissions_MSTR] TO [DYNGRP]
GO
