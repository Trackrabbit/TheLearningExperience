CREATE TABLE [dbo].[HRPMDV01]
(
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRPMDV01] ADD CONSTRAINT [PKHRPMDV01] PRIMARY KEY CLUSTERED  ([DIVISIONCODE_I], [COMPANYCODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4HRPMDV01] ON [dbo].[HRPMDV01] ([COMPANYCODE_I], [DIVISIONCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPMDV01].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPMDV01].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRPMDV01].[DIVISION_I]'
GO
GRANT SELECT ON  [dbo].[HRPMDV01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRPMDV01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRPMDV01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRPMDV01] TO [DYNGRP]
GO
