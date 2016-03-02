CREATE TABLE [dbo].[B0510190]
(
[MJW_Address_Type] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Address_Type_Descrip] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510190] ADD CONSTRAINT [PKB0510190] PRIMARY KEY CLUSTERED  ([MJW_Address_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510190] ON [dbo].[B0510190] ([MJW_Address_Type_Descrip], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510190].[MJW_Address_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510190].[MJW_Address_Type_Descrip]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510190].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510190] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510190] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510190] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510190] TO [DYNGRP]
GO
