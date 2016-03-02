CREATE TABLE [dbo].[B7100820]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_Contract_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Offering_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Order_TypeS] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Revenue_Sou] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EBTemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100820] ADD CONSTRAINT [PKB7100820] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100820].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100820].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100820].[BSSI_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100820].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100820].[BSSI_Default_Order_TypeS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100820].[BSSI_Default_Revenue_Sou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100820].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100820].[BSSI_EBTemplateID]'
GO
GRANT SELECT ON  [dbo].[B7100820] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100820] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100820] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100820] TO [DYNGRP]
GO
