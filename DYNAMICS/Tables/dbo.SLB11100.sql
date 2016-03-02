CREATE TABLE [dbo].[SLB11100]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Additional_Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[SmartList_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Blank_Field_CB] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB11100] ADD CONSTRAINT [PKSLB11100] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [Table_Number], [Additional_Table_Number], [Field_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11100].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11100].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11100].[Additional_Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11100].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11100].[SmartList_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB11100].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB11100].[Blank_Field_CB]'
GO
GRANT SELECT ON  [dbo].[SLB11100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB11100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB11100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB11100] TO [DYNGRP]
GO
