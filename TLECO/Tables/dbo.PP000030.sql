CREATE TABLE [dbo].[PP000030]
(
[PP_User_Security_Type] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Profile_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_User_Access] [tinyint] NOT NULL,
[PP_Edit_Profile_Original] [tinyint] NOT NULL,
[PP_Edit_Profile_Offset_A] [tinyint] NOT NULL,
[PP_Edit_Profile_Deferred] [tinyint] NOT NULL,
[PP_Edit_Profile_CI_Accou] [tinyint] NOT NULL,
[PP_Edit_Profile_Transfer] [tinyint] NOT NULL,
[PP_Edit_Profile_Start_Da] [tinyint] NOT NULL,
[PP_Edit_Profile_Calculat] [tinyint] NOT NULL,
[PP_Edit_Profile_Periods] [tinyint] NOT NULL,
[PP_Edit_Profile_Miscella] [tinyint] NOT NULL,
[PP_Edit_Debit_Credit] [tinyint] NOT NULL,
[PP_Module] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000030] ADD CONSTRAINT [PKPP000030] PRIMARY KEY NONCLUSTERED  ([PP_User_Security_Type], [USERID], [PP_Profile_Name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PP000030] ON [dbo].[PP000030] ([PP_Profile_Name], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP000030] ON [dbo].[PP000030] ([PP_User_Security_Type], [USERID], [PP_User_Access], [PP_Profile_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_User_Security_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000030].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000030].[PP_Profile_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_User_Access]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Original]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Offset_A]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Deferred]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_CI_Accou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Transfer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Start_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Calculat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Periods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Profile_Miscella]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Edit_Debit_Credit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000030].[PP_Module]'
GO
GRANT SELECT ON  [dbo].[PP000030] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000030] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000030] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000030] TO [DYNGRP]
GO
