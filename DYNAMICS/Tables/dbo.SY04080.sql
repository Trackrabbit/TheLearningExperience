CREATE TABLE [dbo].[SY04080]
(
[CardType] [smallint] NOT NULL,
[CardID] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SocialNetworkID] [smallint] NOT NULL,
[MemberID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04080] ADD CONSTRAINT [PKSY04080] PRIMARY KEY NONCLUSTERED  ([CardType], [CardID], [SocialNetworkID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04080].[CardType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04080].[CardID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04080].[SocialNetworkID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04080].[MemberID]'
GO
GRANT SELECT ON  [dbo].[SY04080] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04080] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04080] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04080] TO [DYNGRP]
GO
