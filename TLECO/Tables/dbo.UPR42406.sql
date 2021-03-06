CREATE TABLE [dbo].[UPR42406]
(
[Restriction_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42406] ADD CONSTRAINT [PKUPR42406] PRIMARY KEY NONCLUSTERED  ([Restriction_Code], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR42406] ON [dbo].[UPR42406] ([EMPLOYID], [Restriction_Code]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42406].[Restriction_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42406].[EMPLOYID]'
GO
GRANT SELECT ON  [dbo].[UPR42406] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42406] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42406] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42406] TO [DYNGRP]
GO
