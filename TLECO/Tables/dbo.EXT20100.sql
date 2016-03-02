CREATE TABLE [dbo].[EXT20100]
(
[Extender_Window_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Window_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Window_Type] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Long_Form_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Window_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_1] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_2] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_3] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_4] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_5] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_1] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_2] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_3] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_4] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_5] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Field_IDs_1] [int] NOT NULL,
[Extender_Field_IDs_2] [int] NOT NULL,
[Extender_Field_IDs_3] [int] NOT NULL,
[Extender_Field_IDs_4] [int] NOT NULL,
[Extender_Field_IDs_5] [int] NOT NULL,
[Extender_Field_IDs_6] [int] NOT NULL,
[Extender_Field_IDs_7] [int] NOT NULL,
[Extender_Field_IDs_8] [int] NOT NULL,
[Extender_Field_IDs_9] [int] NOT NULL,
[Extender_Field_IDs_10] [int] NOT NULL,
[Extender_Field_IDs_11] [int] NOT NULL,
[Extender_Field_IDs_12] [int] NOT NULL,
[Extender_Field_IDs_13] [int] NOT NULL,
[Extender_Field_IDs_14] [int] NOT NULL,
[Extender_Field_IDs_15] [int] NOT NULL,
[AddExtenderWindowDetails] [tinyint] NOT NULL,
[AddExtenderWindowNotes] [tinyint] NOT NULL,
[Detail_Field_IDs_1] [int] NOT NULL,
[Detail_Field_IDs_2] [int] NOT NULL,
[Detail_Field_IDs_3] [int] NOT NULL,
[Detail_Field_IDs_4] [int] NOT NULL,
[Detail_Field_IDs_5] [int] NOT NULL,
[Detail_Field_IDs_6] [int] NOT NULL,
[Detail_Field_IDs_7] [int] NOT NULL,
[Detail_Field_IDs_8] [int] NOT NULL,
[Detail_Field_IDs_9] [int] NOT NULL,
[Detail_Field_IDs_10] [int] NOT NULL,
[Detail_Field_IDs_2_1] [int] NOT NULL,
[Detail_Field_IDs_2_2] [int] NOT NULL,
[Detail_Field_IDs_2_3] [int] NOT NULL,
[Detail_Field_IDs_2_4] [int] NOT NULL,
[Detail_Field_IDs_2_5] [int] NOT NULL,
[Detail_Field_IDs_2_6] [int] NOT NULL,
[Detail_Field_IDs_2_7] [int] NOT NULL,
[Detail_Field_IDs_2_8] [int] NOT NULL,
[Detail_Field_IDs_2_9] [int] NOT NULL,
[Detail_Field_IDs_2_10] [int] NOT NULL,
[Show_Total_CB] [tinyint] NOT NULL,
[Total_Field_ID] [int] NOT NULL,
[Read_Only_CB] [tinyint] NOT NULL,
[Display_In_Tab] [tinyint] NOT NULL,
[Tab_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PT_Open_Method1] [smallint] NOT NULL,
[Auto_Open] [tinyint] NOT NULL,
[Auto_Close] [tinyint] NOT NULL,
[Extender_Hot_Key] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Field_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Template_ID] [int] NOT NULL,
[Template_SelectionMethod] [smallint] NOT NULL,
[Special_Case_Number] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20100] ADD CONSTRAINT [CK__EXT20100__CREATD__42BB30F2] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20100] ADD CONSTRAINT [CK__EXT20100__MODIFD__43AF552B] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20100] ADD CONSTRAINT [PKEXT20100] PRIMARY KEY NONCLUSTERED  ([Extender_Window_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20100] ON [dbo].[EXT20100] ([Extender_Window_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Window_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Window_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Window_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Long_Form_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Long_Window_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Windows_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Windows_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Windows_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Windows_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Windows_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Fields_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Fields_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Fields_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Fields_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Key_Fields_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Field_IDs_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[AddExtenderWindowDetails]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[AddExtenderWindowNotes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Detail_Field_IDs_2_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Show_Total_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Total_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Read_Only_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Display_In_Tab]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Tab_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[PT_Open_Method1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Auto_Open]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Auto_Close]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Extender_Hot_Key]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[Long_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Extender_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Template_SelectionMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20100].[Special_Case_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20100].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT20100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20100] TO [DYNGRP]
GO
