CREATE TABLE [dbo].[FAINST02]
(
[Install_Date_and_Time] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[Install_Step] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Install_Component_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FAINST02] ADD CONSTRAINT [PKFAINST02] PRIMARY KEY CLUSTERED  ([Install_Date_and_Time], [CMPANYID], [Install_Step], [Install_Component_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FAINST02].[Install_Date_and_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAINST02].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FAINST02].[Install_Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FAINST02].[Install_Component_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FAINST02].[ERMSGTXT]'
GO
GRANT SELECT ON  [dbo].[FAINST02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FAINST02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FAINST02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FAINST02] TO [DYNGRP]
GO
