CREATE TABLE [dbo].[SLB10600]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10600] ADD CONSTRAINT [PKSLB10600] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [SmartList_Field_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10600].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10600].[SmartList_Field_Name]'
GO
GRANT SELECT ON  [dbo].[SLB10600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10600] TO [DYNGRP]
GO
