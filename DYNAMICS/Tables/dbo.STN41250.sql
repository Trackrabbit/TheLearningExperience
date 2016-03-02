CREATE TABLE [dbo].[STN41250]
(
[Machine_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNSER] [smallint] NOT NULL,
[PRNTASK] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNAMODE] [smallint] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STN41250] ADD CONSTRAINT [CK__STN41250__CREATD__4F7CD00D] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[STN41250] ADD CONSTRAINT [CK__STN41250__MODIFD__5070F446] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[STN41250] ADD CONSTRAINT [PKSTN41250] PRIMARY KEY CLUSTERED  ([Machine_ID], [PRNSER], [PRNTASK], [LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41250].[Machine_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41250].[PRNSER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41250].[PRNTASK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41250].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41250].[PRNAMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[STN41250].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[STN41250].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41250].[LSTUSRED]'
GO
GRANT SELECT ON  [dbo].[STN41250] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[STN41250] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[STN41250] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[STN41250] TO [DYNGRP]
GO
