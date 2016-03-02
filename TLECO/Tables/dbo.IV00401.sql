CREATE TABLE [dbo].[IV00401]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[SUGITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUGITEMDEC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUGQUANTITY] [numeric] (19, 5) NOT NULL,
[SALESSCRIPT] [char] (251) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00401] ADD CONSTRAINT [PKIV00401] PRIMARY KEY CLUSTERED  ([ITEMNMBR], [SUGITEMNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV00401] ON [dbo].[IV00401] ([ITEMNMBR], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00401].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00401].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00401].[SUGITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00401].[SUGITEMDEC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00401].[SUGQUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00401].[SALESSCRIPT]'
GO
GRANT SELECT ON  [dbo].[IV00401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00401] TO [DYNGRP]
GO
