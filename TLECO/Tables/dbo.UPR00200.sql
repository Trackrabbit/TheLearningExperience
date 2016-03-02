CREATE TABLE [dbo].[UPR00200]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Time_on_Behalf_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[Admin_Code] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00200] ADD CONSTRAINT [PKUPR00200] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [Time_on_Behalf_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR00200] ON [dbo].[UPR00200] ([Time_on_Behalf_Code], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00200].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00200].[Time_on_Behalf_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00200].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00200].[Admin_Code]'
GO
GRANT SELECT ON  [dbo].[UPR00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00200] TO [DYNGRP]
GO
