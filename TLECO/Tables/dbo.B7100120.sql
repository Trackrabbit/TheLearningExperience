CREATE TABLE [dbo].[B7100120]
(
[SETUPKEY] [smallint] NOT NULL,
[BSSI_Offering_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OffType_For_PurchFr] [smallint] NOT NULL,
[BSSI_Template_ID_FPufFr] [smallint] NOT NULL,
[BSSI_Default_Expense_Sou] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Order_TypeP] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ExpRecAcctFrom] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100120] ADD CONSTRAINT [PKB7100120] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100120].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100120].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100120].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100120].[BSSI_OffType_For_PurchFr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100120].[BSSI_Template_ID_FPufFr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100120].[BSSI_Default_Expense_Sou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100120].[BSSI_Default_Order_TypeP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100120].[BSSI_ExpRecAcctFrom]'
GO
GRANT SELECT ON  [dbo].[B7100120] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100120] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100120] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100120] TO [DYNGRP]
GO
