CREATE TABLE [dbo].[MinPONum]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Never_Default_Previous] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MinPONum] ADD CONSTRAINT [PKMinPONum] PRIMARY KEY NONCLUSTERED  ([PONUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MinPONum].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MinPONum].[RCPTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MinPONum].[Never_Default_Previous]'
GO
GRANT SELECT ON  [dbo].[MinPONum] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MinPONum] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MinPONum] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MinPONum] TO [DYNGRP]
GO
