CREATE TABLE [dbo].[IV00400]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUOTE] [tinyint] NOT NULL,
[PRDER] [tinyint] NOT NULL,
[FULFILL] [tinyint] NOT NULL,
[INVOICECB] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00400] ADD CONSTRAINT [PKIV00400] PRIMARY KEY CLUSTERED  ([ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00400].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00400].[QUOTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00400].[PRDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00400].[FULFILL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00400].[INVOICECB]'
GO
GRANT SELECT ON  [dbo].[IV00400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00400] TO [DYNGRP]
GO
