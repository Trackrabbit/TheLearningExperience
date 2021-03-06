CREATE TABLE [dbo].[POA40001]
(
[CMPANYID] [smallint] NOT NULL,
[POA_ActivatePOApprovals] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POA40001] ADD CONSTRAINT [PKPOA40001] PRIMARY KEY NONCLUSTERED  ([CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POA40001].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POA40001].[POA_ActivatePOApprovals]'
GO
GRANT SELECT ON  [dbo].[POA40001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POA40001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POA40001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POA40001] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[POA40001] TO [DYNWORKFLOWGRP]
GO
