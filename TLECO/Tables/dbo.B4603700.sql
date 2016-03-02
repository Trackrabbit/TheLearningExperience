CREATE TABLE [dbo].[B4603700]
(
[BSSI_Priority_Code_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4603700] ADD CONSTRAINT [PKB4603700] PRIMARY KEY NONCLUSTERED  ([BSSI_Priority_Code_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4603700] ON [dbo].[B4603700] ([DSCRIPTN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603700].[BSSI_Priority_Code_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603700].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603700].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4603700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4603700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4603700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4603700] TO [DYNGRP]
GO
