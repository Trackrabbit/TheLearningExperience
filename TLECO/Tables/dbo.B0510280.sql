CREATE TABLE [dbo].[B0510280]
(
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Year_Total] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510280] ADD CONSTRAINT [PKB0510280] PRIMARY KEY NONCLUSTERED  ([MJW_Investment_Number], [VENDORID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1B0510280] ON [dbo].[B0510280] ([MJW_Offering_ID], [MJW_Series_ID], [VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510280].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510280].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510280].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510280].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510280].[MJW_Year_Total]'
GO
GRANT SELECT ON  [dbo].[B0510280] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510280] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510280] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510280] TO [DYNGRP]
GO
