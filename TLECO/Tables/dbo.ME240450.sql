CREATE TABLE [dbo].[ME240450]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FilePath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEUNLIMAPPRVL] [tinyint] NOT NULL,
[MAXAPPROVALAMOUNT] [numeric] (19, 5) NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[METEXTPHONENUMBER] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240450] ADD CONSTRAINT [PKME240450] PRIMARY KEY CLUSTERED  ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240450].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240450].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240450].[FilePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240450].[MEUNLIMAPPRVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240450].[MAXAPPROVALAMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240450].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240450].[METEXTPHONENUMBER]'
GO
GRANT SELECT ON  [dbo].[ME240450] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240450] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240450] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240450] TO [DYNGRP]
GO
