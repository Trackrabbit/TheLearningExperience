CREATE TABLE [dbo].[EXT20120]
(
[Extender_Enquiry_ID] [int] NOT NULL,
[Extender_Window_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Window_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[Long_Form_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Window_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Hot_Key] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Read_Only_CB] [tinyint] NOT NULL,
[Use_Alternate_Key_CB] [tinyint] NOT NULL,
[Extender_Key_Fields_1] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_2] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_3] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_4] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Fields_5] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_1] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_2] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_3] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_4] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Key_Windows_5] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Display_In_Tab] [tinyint] NOT NULL,
[Tab_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20120] ADD CONSTRAINT [CK__EXT20120__CREATD__635D0AAE] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20120] ADD CONSTRAINT [CK__EXT20120__MODIFD__64512EE7] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20120] ADD CONSTRAINT [PKEXT20120] PRIMARY KEY NONCLUSTERED  ([Extender_Enquiry_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20120] ON [dbo].[EXT20120] ([Extender_Window_ID], [Extender_Enquiry_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20120].[Extender_Enquiry_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Window_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Window_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20120].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Long_Form_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Long_Window_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Hot_Key]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20120].[Read_Only_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20120].[Use_Alternate_Key_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Fields_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Fields_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Fields_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Fields_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Fields_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Windows_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Windows_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Windows_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Windows_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Extender_Key_Windows_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20120].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20120].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20120].[Display_In_Tab]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20120].[Tab_Name]'
GO
GRANT SELECT ON  [dbo].[EXT20120] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20120] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20120] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20120] TO [DYNGRP]
GO
