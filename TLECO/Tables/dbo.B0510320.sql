CREATE TABLE [dbo].[B0510320]
(
[MJW_Tax_Type] [smallint] NOT NULL,
[MJW_Liquidation_Setup_Ke] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[MJW_Liquidation_Text] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510320] ADD CONSTRAINT [PKB0510320] PRIMARY KEY CLUSTERED  ([MJW_Tax_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510320].[MJW_Tax_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510320].[MJW_Liquidation_Setup_Ke]'
GO
GRANT SELECT ON  [dbo].[B0510320] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510320] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510320] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510320] TO [DYNGRP]
GO
