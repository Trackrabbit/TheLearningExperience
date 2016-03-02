CREATE TABLE [dbo].[SY04090]
(
[SocialNetworkID] [smallint] NOT NULL,
[SocialNetworkName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SocialNetworkAccessUrl] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SocialNetworkLogo] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SocialNetworkStatus] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04090] ADD CONSTRAINT [PKSY04090] PRIMARY KEY NONCLUSTERED  ([SocialNetworkID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04090].[SocialNetworkID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04090].[SocialNetworkName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04090].[SocialNetworkAccessUrl]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04090].[SocialNetworkLogo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04090].[SocialNetworkStatus]'
GO
GRANT SELECT ON  [dbo].[SY04090] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04090] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04090] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04090] TO [DYNGRP]
GO
