CREATE TABLE [dbo].[PP000050]
(
[UNIQKEY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_8] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_ID_9] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_1] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_2] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_3] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_4] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_5] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_6] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_7] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_8] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Window_Name_9] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000050] ADD CONSTRAINT [PKPP000050] PRIMARY KEY NONCLUSTERED  ([UNIQKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[UNIQKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_User_ID_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000050].[PP_Window_Name_9]'
GO
GRANT SELECT ON  [dbo].[PP000050] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000050] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000050] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000050] TO [DYNGRP]
GO
