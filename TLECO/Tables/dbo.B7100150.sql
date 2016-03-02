CREATE TABLE [dbo].[B7100150]
(
[MODULE1] [smallint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100150] ADD CONSTRAINT [PKB7100150] PRIMARY KEY NONCLUSTERED  ([MODULE1], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7100150] ON [dbo].[B7100150] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100150].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100150].[CUSTNMBR]'
GO
GRANT SELECT ON  [dbo].[B7100150] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100150] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100150] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100150] TO [DYNGRP]
GO