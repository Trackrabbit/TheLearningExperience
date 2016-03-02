CREATE TABLE [dbo].[SVC07550]
(
[MAPPRLOC] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Item_Image_Folder] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_TimeOut] [smallint] NOT NULL,
[SVC_CycleTime] [smallint] NOT NULL,
[SVC_LicensedUser] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC07550] ADD CONSTRAINT [PKSVC07550] PRIMARY KEY NONCLUSTERED  ([SVC_Item_Image_Folder], [MAPPRLOC]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07550].[MAPPRLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07550].[SVC_Item_Image_Folder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07550].[SVC_TimeOut]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC07550].[SVC_CycleTime]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC07550].[SVC_LicensedUser]'
GO
GRANT SELECT ON  [dbo].[SVC07550] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC07550] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC07550] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC07550] TO [DYNGRP]
GO
