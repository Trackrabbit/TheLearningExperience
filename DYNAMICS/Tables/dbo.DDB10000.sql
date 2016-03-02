CREATE TABLE [dbo].[DDB10000]
(
[Drill_Down_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Drill_Down_Description] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Drill_Down_Type] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SmartList_Number] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DDB10000] ADD CONSTRAINT [CK__DDB10000__CREATD__46D27B73] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[DDB10000] ADD CONSTRAINT [CK__DDB10000__MODIFD__47C69FAC] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[DDB10000] ADD CONSTRAINT [PKDDB10000] PRIMARY KEY NONCLUSTERED  ([Drill_Down_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10000].[Drill_Down_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10000].[Drill_Down_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10000].[Drill_Down_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10000].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10000].[FORMNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10000].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10000].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DDB10000].[SmartList_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DDB10000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10000].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DDB10000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DDB10000].[CRUSRID]'
GO
GRANT SELECT ON  [dbo].[DDB10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DDB10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DDB10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DDB10000] TO [DYNGRP]
GO
