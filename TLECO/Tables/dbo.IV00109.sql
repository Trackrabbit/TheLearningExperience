CREATE TABLE [dbo].[IV00109]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[SNSEGTYPE] [smallint] NOT NULL,
[DATEFMT] [smallint] NOT NULL,
[SGMNTLTH] [smallint] NOT NULL,
[SNOPERATION] [smallint] NOT NULL,
[SNSTARTVAL] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SNENDVAL] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00109] ADD CONSTRAINT [PKIV00109] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00109].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00109].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00109].[SNSEGTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00109].[DATEFMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00109].[SGMNTLTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00109].[SNOPERATION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00109].[SNSTARTVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00109].[SNENDVAL]'
GO
GRANT SELECT ON  [dbo].[IV00109] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00109] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00109] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00109] TO [DYNGRP]
GO
