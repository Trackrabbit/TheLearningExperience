CREATE TABLE [dbo].[EXT20600]
(
[Extender_Action_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Action_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Event_Type] [smallint] NOT NULL,
[Extender_Event_ID] [int] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Long_Form_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Window_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Long_Field_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TABLTECH] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20600] ADD CONSTRAINT [CK__EXT20600__CREATD__3F1FAA38] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20600] ADD CONSTRAINT [CK__EXT20600__MODIFD__3E2B85FF] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT20600] ADD CONSTRAINT [PKEXT20600] PRIMARY KEY NONCLUSTERED  ([Extender_Action_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20600] ON [dbo].[EXT20600] ([Extender_Action_Name], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4EXT20600] ON [dbo].[EXT20600] ([Extender_Event_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT20600] ON [dbo].[EXT20600] ([Extender_Event_Type], [Extender_Action_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[Extender_Action_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[Extender_Action_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20600].[Extender_Event_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20600].[Extender_Event_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20600].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[Long_Form_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[Long_Window_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[Long_Field_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[TABLTECH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20600].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT20600].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20600].[CRUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT20600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20600] TO [DYNGRP]
GO
