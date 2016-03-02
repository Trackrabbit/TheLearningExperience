CREATE TABLE [dbo].[palbrdty]
(
[IntegerValue] [smallint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[palbrdty] ADD CONSTRAINT [PKpalbrdty] PRIMARY KEY NONCLUSTERED  ([DSCRIPTN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2palbrdty] ON [dbo].[palbrdty] ([IntegerValue]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbrdty].[IntegerValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbrdty].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[palbrdty] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[palbrdty] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[palbrdty] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[palbrdty] TO [DYNGRP]
GO
