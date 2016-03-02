CREATE TABLE [dbo].[ME27613]
(
[ME_Check_Format_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Check_Object_Order] [smallint] NOT NULL,
[ME_Pay_Segment_DDL] [smallint] NOT NULL,
[ME_X_Coordinate] [numeric] (19, 5) NOT NULL,
[ME_Y_Coordinate] [numeric] (19, 5) NOT NULL,
[ME_X_Coordinate_Centimete] [numeric] (19, 5) NOT NULL,
[ME_Y_Coordinate_Centimete] [numeric] (19, 5) NOT NULL,
[ME_X_Coordinate_Inch] [numeric] (19, 5) NOT NULL,
[ME_Y_Coordinate_Inch] [numeric] (19, 5) NOT NULL,
[ME_Font_Type] [smallint] NOT NULL,
[ME_Font_Size] [smallint] NOT NULL,
[ME_Font_Bold] [tinyint] NOT NULL,
[ME_Font_Italics] [tinyint] NOT NULL,
[ME_Field_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Visible] [tinyint] NOT NULL,
[ME_Position_Only] [tinyint] NOT NULL,
[ME_Label_Font_Bold] [tinyint] NOT NULL,
[ME_Label_Font_Italics] [tinyint] NOT NULL,
[ME_Label_Font_Size] [smallint] NOT NULL,
[ME_Label_Font_Type] [smallint] NOT NULL,
[ME_Label_Visible] [tinyint] NOT NULL,
[ME_Label_X_Coordinate] [numeric] (19, 5) NOT NULL,
[ME_Label_X_Coordinate_Ce] [numeric] (19, 5) NOT NULL,
[ME_Label_X_Coordinate_In] [numeric] (19, 5) NOT NULL,
[ME_Label_Y_Coordinate] [numeric] (19, 5) NOT NULL,
[ME_Label_Y_Coordinate_Ce] [numeric] (19, 5) NOT NULL,
[ME_Label_Y_Coordinate_In] [numeric] (19, 5) NOT NULL,
[ME_Field_Label] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27613] ADD CONSTRAINT [PKME27613] PRIMARY KEY CLUSTERED  ([ME_Check_Format_ID], [ME_Field_Name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME27613] ON [dbo].[ME27613] ([ME_Check_Format_ID], [ME_Check_Object_Order]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ME27613] ON [dbo].[ME27613] ([ME_Check_Format_ID], [ME_X_Coordinate], [ME_Y_Coordinate], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5ME27613] ON [dbo].[ME27613] ([ME_Check_Format_ID], [ME_Y_Coordinate], [ME_X_Coordinate], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ME27613] ON [dbo].[ME27613] ([ME_Check_Object_Order], [ME_Check_Format_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27613].[ME_Check_Format_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Check_Object_Order]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Pay_Segment_DDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_X_Coordinate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Y_Coordinate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_X_Coordinate_Centimete]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Y_Coordinate_Centimete]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_X_Coordinate_Inch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Y_Coordinate_Inch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Font_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Font_Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Font_Bold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Font_Italics]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27613].[ME_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Visible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Position_Only]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Label_Font_Bold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Label_Font_Italics]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Label_Font_Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Label_Font_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27613].[ME_Label_Visible]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Label_X_Coordinate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Label_X_Coordinate_Ce]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Label_X_Coordinate_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Label_Y_Coordinate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Label_Y_Coordinate_Ce]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27613].[ME_Label_Y_Coordinate_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27613].[ME_Field_Label]'
GO
GRANT SELECT ON  [dbo].[ME27613] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27613] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27613] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27613] TO [DYNGRP]
GO
