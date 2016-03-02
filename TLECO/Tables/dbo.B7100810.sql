CREATE TABLE [dbo].[B7100810]
(
[ITMCLSCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_Offering_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Order_TypeS] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Revenue_Sou] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Order_TypeP] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Expense_Sou] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EBTemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DefaultDefStartDt1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100810] ADD CONSTRAINT [PKB7100810] PRIMARY KEY NONCLUSTERED  ([ITMCLSCD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[ITMCLSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100810].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[BSSI_Default_Order_TypeS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[BSSI_Default_Revenue_Sou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[BSSI_Default_Order_TypeP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[BSSI_Default_Expense_Sou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100810].[BSSI_EBTemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100810].[BSSI_DefaultDefStartDt1]'
GO
GRANT SELECT ON  [dbo].[B7100810] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100810] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100810] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100810] TO [DYNGRP]
GO
