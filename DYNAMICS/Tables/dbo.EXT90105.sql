CREATE TABLE [dbo].[EXT90105]
(
[PRODID] [smallint] NOT NULL,
[Series_Number] [smallint] NOT NULL,
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT90105] ADD CONSTRAINT [PKEXT90105] PRIMARY KEY NONCLUSTERED  ([PRODID], [Series_Number], [RPRTNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT90105] ON [dbo].[EXT90105] ([PRODID], [RPRTNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT90105].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT90105].[Series_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT90105].[RPRTNAME]'
GO
GRANT SELECT ON  [dbo].[EXT90105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT90105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT90105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT90105] TO [DYNGRP]
GO
