CREATE TABLE [dbo].[EMPNOTE]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[COMMENTS32000_I] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMPNOTE] ADD CONSTRAINT [PKEMPNOTE] PRIMARY KEY CLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EMPNOTE].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EMPNOTE].[SSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EMPNOTE].[LLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EMPNOTE].[FFIRSTNAME_I]'
GO
GRANT SELECT ON  [dbo].[EMPNOTE] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EMPNOTE] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EMPNOTE] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EMPNOTE] TO [DYNGRP]
GO
