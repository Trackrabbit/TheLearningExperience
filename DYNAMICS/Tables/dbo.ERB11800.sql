CREATE TABLE [dbo].[ERB11800]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pivot_Table_Field_Type] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Pivot_Table_Summary] [smallint] NOT NULL,
[Pivot_Table_Field_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB11800] ADD CONSTRAINT [PKERB11800] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [Pivot_Table_Field_Type], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ERB11800] ON [dbo].[ERB11800] ([Excel_Report_ID], [Table_Number], [Field_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB11800].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11800].[Pivot_Table_Field_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11800].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11800].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11800].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB11800].[Pivot_Table_Summary]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB11800].[Pivot_Table_Field_Name]'
GO
GRANT SELECT ON  [dbo].[ERB11800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB11800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB11800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB11800] TO [DYNGRP]
GO
