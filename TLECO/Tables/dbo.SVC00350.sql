CREATE TABLE [dbo].[SVC00350]
(
[EQUIPID] [int] NOT NULL,
[SVC_PM_Annual_Date] [datetime] NOT NULL,
[SCHEDID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMDTLID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FREQOFPM] [smallint] NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[SVC_PM_Type] [smallint] NOT NULL,
[SVC_Meter_Type] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00350] ADD CONSTRAINT [CK__SVC00350__SVC_PM__212CC0CF] CHECK ((datepart(hour,[SVC_PM_Annual_Date])=(0) AND datepart(minute,[SVC_PM_Annual_Date])=(0) AND datepart(second,[SVC_PM_Annual_Date])=(0) AND datepart(millisecond,[SVC_PM_Annual_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00350] ADD CONSTRAINT [PKSVC00350] PRIMARY KEY NONCLUSTERED  ([EQUIPID], [SCHEDID], [PMDTLID], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00350].[EQUIPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00350].[SVC_PM_Annual_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00350].[SCHEDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00350].[PMDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00350].[FREQOFPM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00350].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00350].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00350].[SVC_PM_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00350].[SVC_Meter_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00350].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00350].[LNSEQNBR]'
GO
GRANT SELECT ON  [dbo].[SVC00350] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00350] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00350] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00350] TO [DYNGRP]
GO
