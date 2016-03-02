CREATE TABLE [dbo].[B7131102]
(
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7131102] ADD CONSTRAINT [PKB7131102] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SNumber], [BSSI_Line_Item_Sequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7131102] ON [dbo].[B7131102] ([SERLNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131102].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7131102].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7131102].[SERLNMBR]'
GO
GRANT SELECT ON  [dbo].[B7131102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7131102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7131102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7131102] TO [DYNGRP]
GO
