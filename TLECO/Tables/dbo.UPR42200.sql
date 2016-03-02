CREATE TABLE [dbo].[UPR42200]
(
[Time_on_Behalf_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[Admin_Code] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42200] ADD CONSTRAINT [PKUPR42200] PRIMARY KEY NONCLUSTERED  ([Time_on_Behalf_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR42200] ON [dbo].[UPR42200] ([DSCRIPTN], [Time_on_Behalf_Code]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42200].[Time_on_Behalf_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42200].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42200].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42200].[Admin_Code]'
GO
GRANT SELECT ON  [dbo].[UPR42200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42200] TO [DYNGRP]
GO
