CREATE TABLE [dbo].[B0510020]
(
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHRTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_Legal_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510020] ADD CONSTRAINT [PKB0510020] PRIMARY KEY CLUSTERED  ([MJW_Series_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B0510020] ON [dbo].[B0510020] ([MJW_Series_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B0510020] ON [dbo].[B0510020] ([MJW_Series_Legal_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510020] ON [dbo].[B0510020] ([SHRTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510020].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510020].[SHRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510020].[MJW_Series_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510020].[MJW_Series_Legal_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510020].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510020] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510020] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510020] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510020] TO [DYNGRP]
GO
