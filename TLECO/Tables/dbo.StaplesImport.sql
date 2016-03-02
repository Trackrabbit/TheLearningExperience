CREATE TABLE [dbo].[StaplesImport]
(
[Detail Inv#] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipToID] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Budget Cntr] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PO Date] [datetime] NULL,
[OrderBy Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Item Ord] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Qty Order] [float] NULL,
[UOM] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Qty Ship] [float] NULL,
[Unit Price] [float] NULL,
[Ext Price] [float] NULL,
[Net Amt] [float] NULL,
[Tax Amt] [float] NULL,
[Freight Amt] [float] NULL,
[Gross Amt] [float] NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[StaplesImport] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[StaplesImport] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[StaplesImport] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[StaplesImport] TO [DYNGRP]
GO
