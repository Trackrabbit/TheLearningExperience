CREATE TABLE [dbo].[SY03000]
(
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHMTHDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARRACCT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARRIER] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPTYPE] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY03000] ADD CONSTRAINT [CK__SY03000__CREATDD__4400FBC0] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY03000] ADD CONSTRAINT [CK__SY03000__MODIFDT__44F51FF9] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY03000] ADD CONSTRAINT [PKSY03000] PRIMARY KEY NONCLUSTERED  ([SHIPMTHD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03000].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03000].[SHMTHDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03000].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03000].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03000].[CARRACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03000].[CARRIER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03000].[SHIPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY03000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03000].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY03000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY03000].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SY03000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY03000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY03000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY03000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY03000] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY03000] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY03000] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY03000] TO [RAPIDGRP]
GO
