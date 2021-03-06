CREATE TABLE [dbo].[B0510110]
(
[MJW_Property_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Property_Name] [char] (63) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510110] ADD CONSTRAINT [PKB0510110] PRIMARY KEY CLUSTERED  ([MJW_Property_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510110] ON [dbo].[B0510110] ([MJW_Property_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510110].[MJW_Property_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510110].[MJW_Property_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510110].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510110].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0510110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510110] TO [DYNGRP]
GO
