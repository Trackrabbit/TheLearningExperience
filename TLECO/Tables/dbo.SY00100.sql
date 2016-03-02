CREATE TABLE [dbo].[SY00100]
(
[CMPANYID] [smallint] NOT NULL,
[DBNAME] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY00100] ADD CONSTRAINT [PKSY00100] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY00100] ON [dbo].[SY00100] ([DBNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY00100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00100].[DBNAME]'
GO
GRANT SELECT ON  [dbo].[SY00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY00100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_payroll]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_power user]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_production planner]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_project manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_purchasing agent]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_purchasing manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_sales manager]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_shipping and receiving]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_shop supervisor]
GO
GRANT SELECT ON  [dbo].[SY00100] TO [rpt_warehouse manager]
GO
