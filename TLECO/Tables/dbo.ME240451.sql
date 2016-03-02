CREATE TABLE [dbo].[ME240451]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPROVL] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240451] ADD CONSTRAINT [PKME240451] PRIMARY KEY CLUSTERED  ([USERID], [CHEKBKID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME240451] ON [dbo].[ME240451] ([CHEKBKID], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240451].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240451].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240451].[APPROVL]'
GO
GRANT SELECT ON  [dbo].[ME240451] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240451] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240451] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240451] TO [DYNGRP]
GO