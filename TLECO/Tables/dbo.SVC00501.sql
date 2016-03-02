CREATE TABLE [dbo].[SVC00501]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMTYPE] [smallint] NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMSHNAM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[LISTPRCE] [numeric] (19, 5) NOT NULL,
[RTRNABLE] [tinyint] NOT NULL,
[METERED] [tinyint] NOT NULL,
[SVC_Delta_Type] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00501] ADD CONSTRAINT [CK__SVC00501__MODIFD__28CDE297] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00501] ADD CONSTRAINT [PKSVC00501] PRIMARY KEY CLUSTERED  ([MODIFDT], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00501].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00501].[ITEMTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00501].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00501].[ITMSHNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00501].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00501].[LISTPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00501].[RTRNABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00501].[METERED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00501].[SVC_Delta_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00501].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SVC00501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00501] TO [DYNGRP]
GO
