CREATE TABLE [dbo].[SVC00305]
(
[EQUIPID] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMDTLID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Meter_1_Level] [int] NOT NULL,
[Meter_2_Level] [int] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTPMDTE] [datetime] NOT NULL,
[METER1] [int] NOT NULL,
[METER2] [int] NOT NULL,
[PMSTAT] [smallint] NOT NULL,
[SVCLSTPMPERF] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00305] ADD CONSTRAINT [CK__SVC00305__LSTPMD__10F65906] CHECK ((datepart(hour,[LSTPMDTE])=(0) AND datepart(minute,[LSTPMDTE])=(0) AND datepart(second,[LSTPMDTE])=(0) AND datepart(millisecond,[LSTPMDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00305] ADD CONSTRAINT [CK__SVC00305__SVCLST__11EA7D3F] CHECK ((datepart(hour,[SVCLSTPMPERF])=(0) AND datepart(minute,[SVCLSTPMPERF])=(0) AND datepart(second,[SVCLSTPMPERF])=(0) AND datepart(millisecond,[SVCLSTPMPERF])=(0)))
GO
ALTER TABLE [dbo].[SVC00305] ADD CONSTRAINT [PKSVC00305] PRIMARY KEY CLUSTERED  ([EQUIPID], [SCHEDID], [PMDTLID], [PMSTAT], [Meter_1_Level], [LSTPMDTE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00305] ON [dbo].[SVC00305] ([CALLNBR], [EQUIPID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00305].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00305].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00305].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00305].[SCHEDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00305].[PMDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00305].[Meter_1_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00305].[Meter_2_Level]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00305].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00305].[LSTPMDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00305].[METER1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00305].[METER2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00305].[PMSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00305].[SVCLSTPMPERF]'
GO
GRANT SELECT ON  [dbo].[SVC00305] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00305] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00305] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00305] TO [DYNGRP]
GO
