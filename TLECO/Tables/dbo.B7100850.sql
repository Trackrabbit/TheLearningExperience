CREATE TABLE [dbo].[B7100850]
(
[VNDCLSID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_Contract_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Offering_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Order_TypeP] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Expense_Sou] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100850] ADD CONSTRAINT [PKB7100850] PRIMARY KEY NONCLUSTERED  ([VNDCLSID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100850].[VNDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100850].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100850].[BSSI_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100850].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100850].[BSSI_Default_Order_TypeP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100850].[BSSI_Default_Expense_Sou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100850].[BSSI_Recog_TemplateID]'
GO
GRANT SELECT ON  [dbo].[B7100850] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100850] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100850] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100850] TO [DYNGRP]
GO
