CREATE TABLE [dbo].[UPR42106]
(
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42106] ADD CONSTRAINT [PKUPR42106] PRIMARY KEY NONCLUSTERED  ([Pay_Schedule], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42106].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42106].[EMPLOYID]'
GO
GRANT SELECT ON  [dbo].[UPR42106] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42106] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42106] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42106] TO [DYNGRP]
GO