CREATE TABLE [dbo].[PP400004]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FILENAME] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Error_Check_Link] [smallint] NOT NULL,
[PP_Document_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Profile_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTX2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP400004] ADD CONSTRAINT [PKPP400004] PRIMARY KEY NONCLUSTERED  ([USERID], [FILENAME], [PP_Error_Check_Link], [PP_Document_Number], [PP_Profile_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400004].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400004].[FILENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP400004].[PP_Error_Check_Link]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400004].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400004].[PP_Profile_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400004].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP400004].[ERMSGTX2]'
GO
GRANT SELECT ON  [dbo].[PP400004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP400004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP400004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP400004] TO [DYNGRP]
GO
