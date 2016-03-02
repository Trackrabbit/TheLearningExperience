CREATE TABLE [dbo].[ME276001]
(
[ME_Key_Array_1] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_2] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_3] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_4] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_5] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_6] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_7] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_8] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_9] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_10] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ME_User_Count_Array_1] [smallint] NOT NULL,
[ME_User_Count_Array_2] [smallint] NOT NULL,
[ME_User_Count_Array_3] [smallint] NOT NULL,
[ME_User_Count_Array_4] [smallint] NOT NULL,
[ME_User_Count_Array_5] [smallint] NOT NULL,
[ME_User_Count_Array_6] [smallint] NOT NULL,
[ME_User_Count_Array_7] [smallint] NOT NULL,
[ME_User_Count_Array_8] [smallint] NOT NULL,
[ME_User_Count_Array_9] [smallint] NOT NULL,
[ME_User_Count_Array_10] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME276001] ADD CONSTRAINT [PKME276001] PRIMARY KEY CLUSTERED  ([SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME276001].[ME_Key_Array_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME276001].[ME_User_Count_Array_10]'
GO
GRANT SELECT ON  [dbo].[ME276001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME276001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME276001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME276001] TO [DYNGRP]
GO
