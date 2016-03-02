CREATE TABLE [dbo].[NLB10200]
(
[Navigation_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Table_Number] [smallint] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Navigation_Field_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Navigation_Display_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Default_Display] [tinyint] NOT NULL,
[Display_Field] [tinyint] NOT NULL,
[Preview_Field] [tinyint] NOT NULL,
[FIELDTYPE] [int] NOT NULL,
[NAV_Field_String_Format] [smallint] NOT NULL,
[String_Mask] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[Show_Currency_Symbol] [tinyint] NOT NULL,
[Show_Percentage_Symbol] [tinyint] NOT NULL,
[Show_Thousands_Separator] [tinyint] NOT NULL,
[Display_As_Account] [tinyint] NOT NULL,
[TBLPHYSNM] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Display_Blank_Dates] [tinyint] NOT NULL,
[Display_As_Negative] [tinyint] NOT NULL,
[Display_As_Note] [tinyint] NOT NULL,
[Negative_Table] [smallint] NOT NULL,
[Negative_Field] [smallint] NOT NULL,
[Decimal_Table] [smallint] NOT NULL,
[Decimal_Field] [smallint] NOT NULL,
[Decimal_Places_Method] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[NLB10200] ADD CONSTRAINT [PKNLB10200] PRIMARY KEY NONCLUSTERED  ([Navigation_ID], [Table_Number], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4NLB10200] ON [dbo].[NLB10200] ([Navigation_ID], [Table_Number], [Default_Display], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5NLB10200] ON [dbo].[NLB10200] ([Navigation_ID], [Table_Number], [Display_Field], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6NLB10200] ON [dbo].[NLB10200] ([Navigation_ID], [Table_Number], [FIELDTYPE], [Field_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3NLB10200] ON [dbo].[NLB10200] ([Navigation_ID], [Table_Number], [Navigation_Display_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2NLB10200] ON [dbo].[NLB10200] ([Navigation_ID], [Table_Number], [Navigation_Field_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10200].[Navigation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Table_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10200].[Navigation_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10200].[Navigation_Display_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Default_Display]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Display_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Preview_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[FIELDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[NAV_Field_String_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10200].[String_Mask]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Show_Currency_Symbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Show_Percentage_Symbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Show_Thousands_Separator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Display_As_Account]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NLB10200].[TBLPHYSNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Display_Blank_Dates]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Display_As_Negative]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Display_As_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Negative_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Negative_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Decimal_Table]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Decimal_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NLB10200].[Decimal_Places_Method]'
GO
GRANT SELECT ON  [dbo].[NLB10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NLB10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NLB10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NLB10200] TO [DYNGRP]
GO
