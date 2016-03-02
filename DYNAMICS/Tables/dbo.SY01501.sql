CREATE TABLE [dbo].[SY01501]
(
[CMPANYID] [smallint] NOT NULL,
[ImageID] [smallint] NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01501] ADD CONSTRAINT [CK__SY01501__CREATDD__01142BA1] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY01501] ADD CONSTRAINT [CK__SY01501__MODIFDT__02084FDA] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY01501] ADD CONSTRAINT [PKSY01501] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [ImageID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01501].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01501].[ImageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01501].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01501].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01501].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01501].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01501].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[SY01501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01501] TO [DYNGRP]
GO
