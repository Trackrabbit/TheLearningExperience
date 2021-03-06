CREATE TABLE [dbo].[UPR42403]
(
[Restriction_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42403] ADD CONSTRAINT [PKUPR42403] PRIMARY KEY NONCLUSTERED  ([Restriction_Code], [DEPRTMNT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR42403] ON [dbo].[UPR42403] ([DEPRTMNT], [Restriction_Code]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42403].[Restriction_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42403].[DEPRTMNT]'
GO
GRANT SELECT ON  [dbo].[UPR42403] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42403] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42403] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42403] TO [DYNGRP]
GO
