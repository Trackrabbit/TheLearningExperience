CREATE TABLE [dbo].[B7112305]
(
[BSSI_Recognition_SNumber] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[BSSI_Adjustment_Amount] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7112305] ADD CONSTRAINT [PKB7112305] PRIMARY KEY NONCLUSTERED  ([BSSI_Recognition_SNumber], [BSSI_Line_Item_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112305].[BSSI_Recognition_SNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112305].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7112305].[BSSI_Adjustment_Amount]'
GO
GRANT SELECT ON  [dbo].[B7112305] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7112305] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7112305] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7112305] TO [DYNGRP]
GO
