CREATE TABLE [dbo].[DE_rentchedule_Import]
(
[tle_Leasenum] [nvarchar] (50) COLLATE Latin1_General_CI_AI NULL,
[amount_] [money] NOT NULL,
[month_Start] [datetime] NULL,
[month_End] [datetime] NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_rentchedule_Import] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_rentchedule_Import] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_rentchedule_Import] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_rentchedule_Import] TO [DYNGRP]
GO
