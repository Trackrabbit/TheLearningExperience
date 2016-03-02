CREATE TABLE [dbo].[SVC00301]
(
[EQUIPID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[METER1] [int] NOT NULL,
[METER2] [int] NOT NULL,
[METER3] [int] NOT NULL,
[LSTDTEDT] [datetime] NOT NULL,
[Daily_Usage] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Meters_1] [int] NOT NULL,
[Meters_2] [int] NOT NULL,
[Meters_3] [int] NOT NULL,
[Meters_4] [int] NOT NULL,
[Meters_5] [int] NOT NULL,
[Dailys_1] [numeric] (19, 5) NOT NULL,
[Dailys_2] [numeric] (19, 5) NOT NULL,
[Dailys_3] [numeric] (19, 5) NOT NULL,
[Dailys_4] [numeric] (19, 5) NOT NULL,
[Dailys_5] [numeric] (19, 5) NOT NULL,
[Replaces_1] [tinyint] NOT NULL,
[Replaces_2] [tinyint] NOT NULL,
[Replaces_3] [tinyint] NOT NULL,
[Replaces_4] [tinyint] NOT NULL,
[Replaces_5] [tinyint] NOT NULL,
[Reading_Entered_From] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Meter_Deltas_1] [int] NOT NULL,
[Meter_Deltas_2] [int] NOT NULL,
[Meter_Deltas_3] [int] NOT NULL,
[Meter_Deltas_4] [int] NOT NULL,
[Meter_Deltas_5] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00301] ADD CONSTRAINT [CK__SVC00301__LSTDTE__08611305] CHECK ((datepart(hour,[LSTDTEDT])=(0) AND datepart(minute,[LSTDTEDT])=(0) AND datepart(second,[LSTDTEDT])=(0) AND datepart(millisecond,[LSTDTEDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00301] ADD CONSTRAINT [PKSVC00301] PRIMARY KEY NONCLUSTERED  ([EQUIPID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1SVC00301] ON [dbo].[SVC00301] ([SERLNMBR], [ITEMNMBR], [LSTDTEDT]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SVC00301] ON [dbo].[SVC00301] ([SERLNMBR], [ITEMNMBR], [LSTDTEDT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00301].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00301].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[METER1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[METER2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[METER3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00301].[LSTDTEDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00301].[Daily_Usage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00301].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meters_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meters_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meters_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meters_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meters_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00301].[Dailys_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00301].[Dailys_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00301].[Dailys_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00301].[Dailys_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00301].[Dailys_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Replaces_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Replaces_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Replaces_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Replaces_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Replaces_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00301].[Reading_Entered_From]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meter_Deltas_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meter_Deltas_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meter_Deltas_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meter_Deltas_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00301].[Meter_Deltas_5]'
GO
GRANT SELECT ON  [dbo].[SVC00301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00301] TO [DYNGRP]
GO
