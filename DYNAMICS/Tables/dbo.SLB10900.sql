CREATE TABLE [dbo].[SLB10900]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GoTo_Number] [smallint] NOT NULL,
[Parameter_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10900] ADD CONSTRAINT [PKSLB10900] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [GoTo_Number], [Parameter_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10900].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10900].[GoTo_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10900].[Parameter_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10900].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10900].[Field_Number]'
GO
GRANT SELECT ON  [dbo].[SLB10900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10900] TO [DYNGRP]
GO
