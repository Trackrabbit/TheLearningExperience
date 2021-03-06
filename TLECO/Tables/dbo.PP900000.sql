CREATE TABLE [dbo].[PP900000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP900000] ADD CONSTRAINT [PKPP900000] PRIMARY KEY NONCLUSTERED  ([USERID], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP900000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP900000].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP900000].[PERIODID]'
GO
GRANT SELECT ON  [dbo].[PP900000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP900000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP900000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP900000] TO [DYNGRP]
GO
