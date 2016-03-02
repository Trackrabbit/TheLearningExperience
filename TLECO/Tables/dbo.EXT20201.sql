CREATE TABLE [dbo].[EXT20201]
(
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Window_Number] [smallint] NOT NULL,
[Extra_Window_Type] [smallint] NOT NULL,
[WINNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Button_Prompts_1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Button_Prompts_2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Button_Prompts_3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[Hidden_window] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20201] ADD CONSTRAINT [PKEXT20201] PRIMARY KEY NONCLUSTERED  ([Extender_Form_ID], [Window_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20201].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Window_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extra_Window_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20201].[WINNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20201].[Button_Prompts_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20201].[Button_Prompts_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20201].[Button_Prompts_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Extender_Field_IDs_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20201].[Hidden_window]'
GO
GRANT SELECT ON  [dbo].[EXT20201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20201] TO [DYNGRP]
GO
