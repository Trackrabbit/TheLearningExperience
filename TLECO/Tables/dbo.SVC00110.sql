CREATE TABLE [dbo].[SVC00110]
(
[PRICELVL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNABLE] [tinyint] NOT NULL,
[SVC_Standard_Percent] [numeric] (19, 5) NOT NULL,
[SVC_Overtime_Percent] [numeric] (19, 5) NOT NULL,
[SVC_Double_Percent] [numeric] (19, 5) NOT NULL,
[SVC_Hotline_Percent] [numeric] (19, 5) NOT NULL,
[SVC_Travel_Percent] [numeric] (19, 5) NOT NULL,
[SVC_Return_Percent] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00110] ADD CONSTRAINT [PKSVC00110] PRIMARY KEY NONCLUSTERED  ([PRICELVL]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00110].[PRICELVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00110].[RTRNABLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00110].[SVC_Standard_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00110].[SVC_Overtime_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00110].[SVC_Double_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00110].[SVC_Hotline_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00110].[SVC_Travel_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00110].[SVC_Return_Percent]'
GO
GRANT SELECT ON  [dbo].[SVC00110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00110] TO [DYNGRP]
GO
