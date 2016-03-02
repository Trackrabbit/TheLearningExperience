CREATE TABLE [dbo].[DD40200]
(
[INDEX1] [tinyint] NOT NULL,
[DDSTRARY_1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_3] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_4] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_5] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_6] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_7] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_8] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_9] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DDSTRARY_10] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD40200] ADD CONSTRAINT [PKDD40200] PRIMARY KEY NONCLUSTERED  ([INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD40200].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DD40200].[DDSTRARY_10]'
GO
GRANT SELECT ON  [dbo].[DD40200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD40200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD40200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD40200] TO [DYNGRP]
GO
