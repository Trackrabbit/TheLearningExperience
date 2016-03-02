CREATE TABLE [dbo].[ME27655]
(
[CMPANYID] [smallint] NOT NULL,
[ME_Inactive_for_Payables] [tinyint] NOT NULL,
[ME_Inactive_for_Payroll] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27655] ADD CONSTRAINT [PKME27655] PRIMARY KEY CLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27655].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27655].[ME_Inactive_for_Payables]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27655].[ME_Inactive_for_Payroll]'
GO
GRANT SELECT ON  [dbo].[ME27655] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27655] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27655] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27655] TO [DYNGRP]
GO
