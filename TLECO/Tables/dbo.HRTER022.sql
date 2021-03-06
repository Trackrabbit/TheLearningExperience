CREATE TABLE [dbo].[HRTER022]
(
[TERMSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TERMSETUPNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRTER022] ADD CONSTRAINT [PKHRTER022] PRIMARY KEY NONCLUSTERED  ([TERMSETUPCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTER022].[TERMSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRTER022].[TERMSETUPNAME_I]'
GO
GRANT SELECT ON  [dbo].[HRTER022] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRTER022] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRTER022] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRTER022] TO [DYNGRP]
GO
