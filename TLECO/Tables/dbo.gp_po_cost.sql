CREATE TABLE [dbo].[gp_po_cost]
(
[SETUPKEY] [smallint] NOT NULL,
[gpcost] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gp_po_cost] ADD CONSTRAINT [PKgp_po_cost] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gp_po_cost].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gp_po_cost].[gpcost]'
GO
GRANT SELECT ON  [dbo].[gp_po_cost] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gp_po_cost] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gp_po_cost] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gp_po_cost] TO [DYNGRP]
GO
