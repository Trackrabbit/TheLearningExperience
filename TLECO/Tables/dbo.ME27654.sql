CREATE TABLE [dbo].[ME27654]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[MSO_BeginPayablesDocumen] [tinyint] NOT NULL,
[MSO_BeginPayablesVendor] [tinyint] NOT NULL,
[MSO_BeginPayablesVoucher] [tinyint] NOT NULL,
[MSO_BeginPayablesVouchGL] [tinyint] NOT NULL,
[MSO_BeginPayrollDocument] [tinyint] NOT NULL,
[MSO_BeginPayrollEmployee] [tinyint] NOT NULL,
[MSO_EndPayablesDocument] [tinyint] NOT NULL,
[MSO_EndPayablesVendor] [tinyint] NOT NULL,
[MSO_EndPayablesVoucher] [tinyint] NOT NULL,
[MSO_EndPayablesVouchGL] [tinyint] NOT NULL,
[MSO_EndPayrollDocument] [tinyint] NOT NULL,
[MSO_EndPayrollEmployee] [tinyint] NOT NULL,
[MSO_IntegratedProductEna] [tinyint] NOT NULL,
[MSO_PayrollSortKey] [tinyint] NOT NULL,
[MSO_PayablesSortKey] [tinyint] NOT NULL,
[MSO_Payables_Handle_Take] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27654] ADD CONSTRAINT [PKME27654] PRIMARY KEY NONCLUSTERED  ([CHEKBKID], [PRODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME27654] ON [dbo].[ME27654] ([CHEKBKID], [MSO_IntegratedProductEna], [PRODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27654].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_BeginPayablesDocumen]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_BeginPayablesVendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_BeginPayablesVoucher]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_BeginPayablesVouchGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_BeginPayrollDocument]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_BeginPayrollEmployee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_EndPayablesDocument]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_EndPayablesVendor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_EndPayablesVoucher]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_EndPayablesVouchGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_EndPayrollDocument]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_EndPayrollEmployee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_IntegratedProductEna]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_PayrollSortKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_PayablesSortKey]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27654].[MSO_Payables_Handle_Take]'
GO
GRANT SELECT ON  [dbo].[ME27654] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27654] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27654] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27654] TO [DYNGRP]
GO
