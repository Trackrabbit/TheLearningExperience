CREATE TABLE [dbo].[GL50010]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEARID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AMNTFROM] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[SQLSESID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL50010] ADD CONSTRAINT [PKGL50010] PRIMARY KEY NONCLUSTERED  ([USERID], [AMNTFROM], [YEARID], [ACTINDX], [SQLSESID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL50010] ON [dbo].[GL50010] ([AMNTFROM], [YEARID], [ACTINDX], [SQLSESID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL50010].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL50010].[YEARID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL50010].[AMNTFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL50010].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL50010].[SQLSESID]'
GO
GRANT SELECT ON  [dbo].[GL50010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL50010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL50010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL50010] TO [DYNGRP]
GO
