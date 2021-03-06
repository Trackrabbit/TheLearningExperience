CREATE TABLE [dbo].[UPR42103]
(
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42103] ADD CONSTRAINT [PKUPR42103] PRIMARY KEY NONCLUSTERED  ([Pay_Schedule], [DEPRTMNT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42103].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42103].[DEPRTMNT]'
GO
GRANT SELECT ON  [dbo].[UPR42103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42103] TO [DYNGRP]
GO
