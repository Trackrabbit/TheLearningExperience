CREATE TABLE [dbo].[B0500200]
(
[BSSI_Fee_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fee_Account_Index] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0500200] ADD CONSTRAINT [PKB0500200] PRIMARY KEY NONCLUSTERED  ([BSSI_Fee_Type_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0500200] ON [dbo].[B0500200] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500200].[BSSI_Fee_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500200].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0500200].[BSSI_Fee_Account_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0500200].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0500200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0500200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0500200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0500200] TO [DYNGRP]
GO
