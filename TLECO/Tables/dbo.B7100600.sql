CREATE TABLE [dbo].[B7100600]
(
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Length] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100600] ADD CONSTRAINT [PKB7100600] PRIMARY KEY CLUSTERED  ([BSSI_Recog_TemplateID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100600].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100600].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100600].[BSSI_Total_Length]'
GO
GRANT SELECT ON  [dbo].[B7100600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100600] TO [DYNGRP]
GO
