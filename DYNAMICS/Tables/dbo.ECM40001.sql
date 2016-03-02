CREATE TABLE [dbo].[ECM40001]
(
[CompanyID] [int] NOT NULL,
[CommitmentActivated] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ECM40001] ADD CONSTRAINT [PKECM40001] PRIMARY KEY CLUSTERED  ([CompanyID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM40001].[CompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM40001].[CommitmentActivated]'
GO
GRANT SELECT ON  [dbo].[ECM40001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ECM40001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ECM40001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ECM40001] TO [DYNGRP]
GO
