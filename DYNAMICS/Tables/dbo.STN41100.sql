CREATE TABLE [dbo].[STN41100]
(
[Machine_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNMODE] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[PRNCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[PRNSET] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[STN41100] ADD CONSTRAINT [CK__STN41100__CREATD__49C3F6B7] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[STN41100] ADD CONSTRAINT [CK__STN41100__MODIFD__4AB81AF0] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[STN41100] ADD CONSTRAINT [PKSTN41100] PRIMARY KEY CLUSTERED  ([Machine_ID], [PRNCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2STN41100] ON [dbo].[STN41100] ([Machine_ID], [PRNMODE], [USERID], [CMPANYID], [PRNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41100].[Machine_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41100].[PRNMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[STN41100].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41100].[PRNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41100].[PRNTDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[STN41100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[STN41100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[STN41100].[LSTUSRED]'
GO
GRANT SELECT ON  [dbo].[STN41100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[STN41100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[STN41100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[STN41100] TO [DYNGRP]
GO
