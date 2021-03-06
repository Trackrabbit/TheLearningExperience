CREATE TABLE [dbo].[B0510300]
(
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_PassSeriesID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJWPassSHRTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510300] ADD CONSTRAINT [PKB0510300] PRIMARY KEY NONCLUSTERED  ([MJW_Offering_ID], [MJW_PassSeriesID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510300] ON [dbo].[B0510300] ([MJW_Offering_ID], [MJWPassSHRTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510300].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510300].[MJW_PassSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510300].[MJWPassSHRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510300].[MJW_Series_ID]'
GO
GRANT SELECT ON  [dbo].[B0510300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510300] TO [DYNGRP]
GO
