CREATE TABLE [dbo].[UPR41105]
(
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCodeDesc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41105] ADD CONSTRAINT [PKUPR41105] PRIMARY KEY NONCLUSTERED  ([CCode]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41105] ON [dbo].[UPR41105] ([CCodeDesc], [CCode]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41105].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41105].[CCodeDesc]'
GO
GRANT SELECT ON  [dbo].[UPR41105] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41105] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41105] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41105] TO [DYNGRP]
GO
