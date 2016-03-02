CREATE TABLE [dbo].[EXT20200]
(
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Form_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Form_ID_Prompt] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Use_Existing_Lookup] [tinyint] NOT NULL,
[Lookup_Number] [int] NOT NULL,
[Autoincrement] [tinyint] NOT NULL,
[Extender_Description_Pro] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description_Field_Req] [tinyint] NOT NULL,
[Use_Secondary_Key] [tinyint] NOT NULL,
[Extender_Second_Prompt] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[Extender_Field_IDs_2_1] [int] NOT NULL,
[Extender_Field_IDs_2_2] [int] NOT NULL,
[Extender_Field_IDs_2_3] [int] NOT NULL,
[Extender_Field_IDs_2_4] [int] NOT NULL,
[Extender_Field_IDs_2_5] [int] NOT NULL,
[Extender_Field_IDs_2_6] [int] NOT NULL,
[Extender_Field_IDs_2_7] [int] NOT NULL,
[Extender_Field_IDs_2_8] [int] NOT NULL,
[Extender_Field_IDs_2_9] [int] NOT NULL,
[Extender_Field_IDs_2_10] [int] NOT NULL,
[Extender_Field_IDs_2_11] [int] NOT NULL,
[Extender_Field_IDs_2_12] [int] NOT NULL,
[Extender_Field_IDs_2_13] [int] NOT NULL,
[Extender_Field_IDs_2_14] [int] NOT NULL,
[Extender_Field_IDs_2_15] [int] NOT NULL,
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
[Read_Only_CB] [tinyint] NOT NULL,
[Add_Extender_Form_Detail] [tinyint] NOT NULL,
[Show_Total_CB] [tinyint] NOT NULL,
[Total_Field_ID] [int] NOT NULL,
[Multicurrency_CB] [tinyint] NOT NULL,
[Currency_Field_ID] [int] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Currency_Default_FieldID] [int] NOT NULL,
[Currency_Default_Method] [smallint] NOT NULL,
[Default_From_Field_ID] [int] NOT NULL,
[Extender_Template_ID] [int] NOT NULL,
[Template_SelectionMethod] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20200] ADD CONSTRAINT [CK__EXT20200__CREATD__6C275AD9] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20200] ADD CONSTRAINT [CK__EXT20200__MODIFD__6D1B7F12] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20200] ADD CONSTRAINT [PKEXT20200] PRIMARY KEY NONCLUSTERED  ([Extender_Form_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20200] ON [dbo].[EXT20200] ([Extender_Form_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[Extender_Form_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[Extender_Form_ID_Prompt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Use_Existing_Lookup]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Lookup_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Autoincrement]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[Extender_Description_Pro]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Description_Field_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Use_Secondary_Key]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[Extender_Second_Prompt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Field_IDs_2_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Detail_Field_IDs_2_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Read_Only_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Add_Extender_Form_Detail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Show_Total_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Total_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Multicurrency_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Currency_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Currency_Default_FieldID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Currency_Default_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Default_From_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Extender_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20200].[Template_SelectionMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20200].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20200].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20200].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT20200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20200] TO [DYNGRP]
GO
