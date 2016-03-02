CREATE TABLE [dbo].[B4640599]
(
[BSSI_Column_ID] [smallint] NOT NULL,
[BSSI_Column_Filter_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Marked] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4640599] ADD CONSTRAINT [PKB4640599] PRIMARY KEY NONCLUSTERED  ([BSSI_Column_ID], [BSSI_Column_Filter_ID], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640599].[BSSI_Column_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640599].[BSSI_Column_Filter_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640599].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640599].[BSSI_Marked]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640599].[USERID]'
GO
GRANT SELECT ON  [dbo].[B4640599] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640599] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640599] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640599] TO [DYNGRP]
GO
