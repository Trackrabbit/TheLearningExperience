CREATE TABLE [dbo].[EXT20401]
(
[Extender_Event_ID] [int] NOT NULL,
[Action_Number] [smallint] NOT NULL,
[Action_Order] [smallint] NOT NULL,
[Action_Type] [smallint] NOT NULL,
[Action_Description] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Template_ID] [int] NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Form_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Window_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Warning_Type] [smallint] NOT NULL,
[Warning_Prompt] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Button_Prompts_1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Button_Prompts_2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Button_Prompts_3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Button_Actions_1] [smallint] NOT NULL,
[Button_Actions_2] [smallint] NOT NULL,
[Button_Actions_3] [smallint] NOT NULL,
[Run_Action_Number] [smallint] NOT NULL,
[Run_Event_ID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20401] ADD CONSTRAINT [PKEXT20401] PRIMARY KEY NONCLUSTERED  ([Extender_Event_ID], [Action_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20401] ON [dbo].[EXT20401] ([Extender_Event_ID], [Action_Order], [Action_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Extender_Event_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Action_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Action_Order]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Action_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Action_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Extender_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Extender_Form_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Long_Form_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Long_Window_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Warning_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Warning_Prompt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Button_Prompts_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Button_Prompts_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20401].[Button_Prompts_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Button_Actions_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Button_Actions_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Button_Actions_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Run_Action_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20401].[Run_Event_ID]'
GO
GRANT SELECT ON  [dbo].[EXT20401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20401] TO [DYNGRP]
GO
