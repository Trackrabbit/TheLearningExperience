CREATE TABLE [dbo].[palbsetp]
(
[IntegerValue] [smallint] NOT NULL,
[AutoOpenSalesDocWindow] [tinyint] NOT NULL,
[AutoApplyInv] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[palbsetp] ADD CONSTRAINT [PKpalbsetp] PRIMARY KEY NONCLUSTERED  ([IntegerValue]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbsetp].[IntegerValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbsetp].[AutoOpenSalesDocWindow]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbsetp].[AutoApplyInv]'
GO
GRANT SELECT ON  [dbo].[palbsetp] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[palbsetp] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[palbsetp] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[palbsetp] TO [DYNGRP]
GO
