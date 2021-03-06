CREATE TABLE [dbo].[UPR00201]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Time_on_Behalf_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00201] ADD CONSTRAINT [PKUPR00201] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [Time_on_Behalf_Code], [DEPRTMNT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00201].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00201].[Time_on_Behalf_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00201].[DEPRTMNT]'
GO
GRANT SELECT ON  [dbo].[UPR00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00201] TO [DYNGRP]
GO
