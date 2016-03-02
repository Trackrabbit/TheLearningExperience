CREATE TABLE [dbo].[SLB10200]
(
[SmartList_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[SmartList_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Display_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Default_Display] [tinyint] NOT NULL,
[Display_Field] [tinyint] NOT NULL,
[FIELDTYPE] [int] NOT NULL,
[SLB_Field_String_Format] [smallint] NOT NULL,
[String_Mask] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[Show_Currency_Symbol] [tinyint] NOT NULL,
[Show_Percentage_Symbol] [tinyint] NOT NULL,
[Show_Thousands_Separator] [tinyint] NOT NULL,
[Summary_Method] [smallint] NOT NULL,
[Display_As_Account] [tinyint] NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Date_Display_Option] [smallint] NOT NULL,
[Display_Blank_Dates] [tinyint] NOT NULL,
[Display_As_Negative] [tinyint] NOT NULL,
[Display_As_Note] [tinyint] NOT NULL,
[Negative_Table] [smallint] NOT NULL,
[Negative_Field] [smallint] NOT NULL,
[Decimal_Table] [smallint] NOT NULL,
[Decimal_Field] [smallint] NOT NULL,
[Decimal_Places_Method] [smallint] NOT NULL,
[Column_Order] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB10200] ADD CONSTRAINT [PKSLB10200] PRIMARY KEY NONCLUSTERED  ([SmartList_ID], [Table_Number], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SLB10200] ON [dbo].[SLB10200] ([SmartList_ID], [Table_Number], [Default_Display], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SLB10200] ON [dbo].[SLB10200] ([SmartList_ID], [Table_Number], [Display_Field], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SLB10200] ON [dbo].[SLB10200] ([SmartList_ID], [Table_Number], [FIELDTYPE], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SLB10200] ON [dbo].[SLB10200] ([SmartList_ID], [Table_Number], [SmartList_Display_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SLB10200] ON [dbo].[SLB10200] ([SmartList_ID], [Table_Number], [SmartList_Field_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10200].[SmartList_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10200].[SmartList_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10200].[SmartList_Display_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Default_Display]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Display_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[FIELDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[SLB_Field_String_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10200].[String_Mask]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Show_Currency_Symbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Show_Percentage_Symbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Show_Thousands_Separator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Summary_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Display_As_Account]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB10200].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Date_Display_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Display_Blank_Dates]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Display_As_Negative]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Display_As_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Negative_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Negative_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Decimal_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Decimal_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Decimal_Places_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB10200].[Column_Order]'
GO
GRANT SELECT ON  [dbo].[SLB10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB10200] TO [DYNGRP]
GO
