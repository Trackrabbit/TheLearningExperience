CREATE TABLE [dbo].[ERB10200]
(
[Excel_Report_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Excel_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Excel_Display_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Display_Field] [tinyint] NOT NULL,
[FIELDTYPE] [int] NOT NULL,
[Excel_String_Format] [smallint] NOT NULL,
[String_Mask] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[Show_Currency_Symbol] [tinyint] NOT NULL,
[Show_Percentage_Symbol] [tinyint] NOT NULL,
[Show_Thousands_Separator] [tinyint] NOT NULL,
[Display_As_Account] [tinyint] NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Display_As_Negative] [tinyint] NOT NULL,
[Display_As_Note] [tinyint] NOT NULL,
[Negative_Table] [smallint] NOT NULL,
[Negative_Field] [smallint] NOT NULL,
[Decimal_Places_Method] [smallint] NOT NULL,
[Pivot_Table_Field_Pos] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ERB10200] ADD CONSTRAINT [PKERB10200] PRIMARY KEY NONCLUSTERED  ([Excel_Report_ID], [Table_Number], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ERB10200] ON [dbo].[ERB10200] ([Excel_Report_ID], [Table_Number], [Display_Field], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ERB10200] ON [dbo].[ERB10200] ([Excel_Report_ID], [Table_Number], [Excel_Display_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ERB10200] ON [dbo].[ERB10200] ([Excel_Report_ID], [Table_Number], [Excel_Field_Name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5ERB10200] ON [dbo].[ERB10200] ([Excel_Report_ID], [Table_Number], [FIELDTYPE], [Field_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10200].[Excel_Report_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10200].[Excel_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10200].[Excel_Display_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Display_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[FIELDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Excel_String_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10200].[String_Mask]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Show_Currency_Symbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Show_Percentage_Symbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Show_Thousands_Separator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Display_As_Account]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ERB10200].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Display_As_Negative]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Display_As_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Negative_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Negative_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Decimal_Places_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ERB10200].[Pivot_Table_Field_Pos]'
GO
GRANT SELECT ON  [dbo].[ERB10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ERB10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ERB10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ERB10200] TO [DYNGRP]
GO
