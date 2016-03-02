CREATE TABLE [dbo].[MS273599]
(
[ME_Key_Array_1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_4] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_5] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_6] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_7] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_8] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_9] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Key_Array_10] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ME_Verification_Source] [smallint] NOT NULL,
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
[ME_Major_Version] [smallint] NOT NULL,
[ME_Minor_Version] [smallint] NOT NULL,
[ME_Build_Version] [smallint] NOT NULL,
[ME_Key_Expiration_Date] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273599] ADD CONSTRAINT [CK__MS273599__ME_Key__13697CB4] CHECK ((datepart(hour,[ME_Key_Expiration_Date])=(0) AND datepart(minute,[ME_Key_Expiration_Date])=(0) AND datepart(second,[ME_Key_Expiration_Date])=(0) AND datepart(millisecond,[ME_Key_Expiration_Date])=(0)))
GO
ALTER TABLE [dbo].[MS273599] ADD CONSTRAINT [PKMS273599] PRIMARY KEY CLUSTERED  ([SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273599].[ME_Key_Array_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_Verification_Source]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_User_Count_Array_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_Major_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_Minor_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273599].[ME_Build_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273599].[ME_Key_Expiration_Date]'
GO
GRANT SELECT ON  [dbo].[MS273599] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273599] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273599] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273599] TO [DYNGRP]
GO
