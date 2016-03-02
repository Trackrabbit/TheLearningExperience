CREATE TABLE [dbo].[B4640502]
(
[BSSI_Column_Filter_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640502] ADD CONSTRAINT [PKB4640502] PRIMARY KEY NONCLUSTERED  ([BSSI_Column_Filter_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640502].[BSSI_Column_Filter_ID]'
GO
GRANT SELECT ON  [dbo].[B4640502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640502] TO [DYNGRP]
GO