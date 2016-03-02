CREATE TABLE [dbo].[IV00118]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[PREVCOST] [numeric] (19, 5) NOT NULL,
[PRESENTCOST] [numeric] (19, 5) NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00118] ADD CONSTRAINT [CK__IV00118__TIME1__10AB74EC] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[IV00118] ADD CONSTRAINT [CK__IV00118__CHANGED__0FB750B3] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[IV00118] ADD CONSTRAINT [PKIV00118] PRIMARY KEY CLUSTERED  ([ITEMNMBR], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV00118] ON [dbo].[IV00118] ([ITEMNMBR], [CHANGEDATE_I], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00118].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00118].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00118].[PREVCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV00118].[PRESENTCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00118].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00118].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00118].[CHANGEBY_I]'
GO
GRANT SELECT ON  [dbo].[IV00118] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00118] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00118] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00118] TO [DYNGRP]
GO
