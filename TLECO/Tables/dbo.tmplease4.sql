CREATE TABLE [dbo].[tmplease4]
(
[row1] [bigint] NULL,
[tle_leasenum] [nvarchar] (50) COLLATE Latin1_General_CI_AI NULL,
[schedulename] [nvarchar] (100) COLLATE Latin1_General_CI_AI NULL,
[multiplier] [numeric] (25, 9) NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[tmplease4] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[tmplease4] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[tmplease4] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[tmplease4] TO [DYNGRP]
GO
