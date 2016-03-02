CREATE TABLE [dbo].[SOPMSTR]
(
[SOPCATEGORIES_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISEQUENCENUMBER_I] [smallint] NOT NULL,
[KEYWORDS_I_1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KEYWORDS_I_2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KEYWORDS_I_3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KEYWORDS_I_4] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KEYWORDS_I_5] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KEYWORDS_I_6] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[SOPTEXT_I] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOPMSTR] ADD CONSTRAINT [PKSOPMSTR] PRIMARY KEY NONCLUSTERED  ([SOPCATEGORIES_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOPMSTR].[SOPCATEGORIES_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOPMSTR].[ISEQUENCENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOPMSTR].[KEYWORDS_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOPMSTR].[KEYWORDS_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOPMSTR].[KEYWORDS_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOPMSTR].[KEYWORDS_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOPMSTR].[KEYWORDS_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOPMSTR].[KEYWORDS_I_6]'
GO
GRANT SELECT ON  [dbo].[SOPMSTR] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOPMSTR] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOPMSTR] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOPMSTR] TO [DYNGRP]
GO