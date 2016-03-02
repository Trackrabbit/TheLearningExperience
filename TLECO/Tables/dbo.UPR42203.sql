CREATE TABLE [dbo].[UPR42203]
(
[Time_on_Behalf_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Employee_ID_Assigned] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42203] ADD CONSTRAINT [PKUPR42203] PRIMARY KEY NONCLUSTERED  ([Time_on_Behalf_Code], [Employee_ID_Assigned]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42203].[Time_on_Behalf_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42203].[Employee_ID_Assigned]'
GO
GRANT SELECT ON  [dbo].[UPR42203] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42203] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42203] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42203] TO [DYNGRP]
GO
