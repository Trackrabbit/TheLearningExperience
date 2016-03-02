CREATE TABLE [dbo].[SLB20000]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Change_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB20000] ADD CONSTRAINT [PKSLB20000] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [SmartList_Change_Type]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB20000].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB20000].[SmartList_Change_Type]'
GO
GRANT SELECT ON  [dbo].[SLB20000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB20000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB20000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB20000] TO [DYNGRP]
GO
