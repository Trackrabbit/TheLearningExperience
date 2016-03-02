CREATE TABLE [dbo].[STN41300]
(
[Machine_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNSER] [smallint] NOT NULL,
[PRNTASK] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNMODE] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[PRNCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STN41300] ADD CONSTRAINT [CK__STN41300__CREATD__534D60F1] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[STN41300] ADD CONSTRAINT [CK__STN41300__MODIFD__5441852A] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[STN41300] ADD CONSTRAINT [PKSTN41300] PRIMARY KEY CLUSTERED  ([Machine_ID], [PRNSER], [PRNTASK], [LOCNCODE], [PRNMODE], [USERID], [CMPANYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2STN41300] ON [dbo].[STN41300] ([Machine_ID], [PRNCODE], [PRNSER], [PRNTASK], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3STN41300] ON [dbo].[STN41300] ([Machine_ID], [PRNMODE], [USERID], [CMPANYID], [PRNSER], [PRNTASK], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41300].[Machine_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41300].[PRNSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41300].[PRNTASK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41300].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41300].[PRNMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41300].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41300].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41300].[PRNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[STN41300].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[STN41300].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41300].[LSTUSRED]'
GO
GRANT SELECT ON  [dbo].[STN41300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[STN41300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[STN41300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[STN41300] TO [DYNGRP]
GO
