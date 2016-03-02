CREATE TABLE [dbo].[HRPBEN11]
(
[COPAYCODE_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COPAYAMOUNT_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPBEN11] ADD CONSTRAINT [PKHRPBEN11] PRIMARY KEY CLUSTERED  ([COPAYCODE_I], [BENEFIT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRPBEN11] ON [dbo].[HRPBEN11] ([BENEFIT], [COPAYCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN11].[COPAYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPBEN11].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRPBEN11].[COPAYAMOUNT_I]'
GO
GRANT SELECT ON  [dbo].[HRPBEN11] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPBEN11] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPBEN11] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPBEN11] TO [DYNGRP]
GO
