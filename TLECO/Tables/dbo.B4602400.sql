CREATE TABLE [dbo].[B4602400]
(
[BSSI_Term] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Amendment] [tinyint] NOT NULL,
[BSSI_Total_Lease_Terms_Q] [int] NOT NULL,
[BSSI_Total_Lease_Terms_M] [int] NOT NULL,
[BSSI_Total_Lease_Terms_Y] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602400] ADD CONSTRAINT [PKB4602400] PRIMARY KEY NONCLUSTERED  ([BSSI_Term]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602400] ON [dbo].[B4602400] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602400].[BSSI_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602400].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602400].[BSSI_Amendment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602400].[BSSI_Total_Lease_Terms_Q]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602400].[BSSI_Total_Lease_Terms_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602400].[BSSI_Total_Lease_Terms_Y]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602400].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602400] TO [DYNGRP]
GO
