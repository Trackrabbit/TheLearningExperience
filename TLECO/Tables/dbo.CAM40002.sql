CREATE TABLE [dbo].[CAM40002]
(
[CAMAccountType] [smallint] NOT NULL,
[CAM_Series] [smallint] NOT NULL,
[SGMNTID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_ControlAccountIndex] [int] NOT NULL,
[CAM_AccrualAccountIndex] [int] NOT NULL,
[CAM_ControlAcctDescr] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAM_AccrualAcctDescr] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CAM40002] ADD CONSTRAINT [PKCAM40002] PRIMARY KEY CLUSTERED  ([CAMAccountType], [SGMNTID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40002].[CAMAccountType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40002].[CAM_Series]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40002].[SGMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40002].[CAM_ControlAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CAM40002].[CAM_AccrualAccountIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40002].[CAM_ControlAcctDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CAM40002].[CAM_AccrualAcctDescr]'
GO
GRANT SELECT ON  [dbo].[CAM40002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CAM40002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CAM40002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CAM40002] TO [DYNGRP]
GO
