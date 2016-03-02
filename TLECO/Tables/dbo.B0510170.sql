CREATE TABLE [dbo].[B0510170]
(
[MJW_Owner_Type_Code] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Owner_Type_Code_Desc] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_K1_Map] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510170] ADD CONSTRAINT [PKB0510170] PRIMARY KEY CLUSTERED  ([MJW_Owner_Type_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510170] ON [dbo].[B0510170] ([MJW_Owner_Type_Code_Desc], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510170].[MJW_Owner_Type_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510170].[MJW_Owner_Type_Code_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510170].[MJW_K1_Map]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510170].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510170] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510170] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510170] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510170] TO [DYNGRP]
GO
