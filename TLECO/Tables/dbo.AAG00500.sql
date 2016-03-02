CREATE TABLE [dbo].[AAG00500]
(
[aaDateID] [int] NOT NULL,
[DATE1] [datetime] NOT NULL,
[aaCalWeek] [smallint] NOT NULL,
[aaCalMonth] [smallint] NOT NULL,
[aaCalQuarter] [smallint] NOT NULL,
[aaCalHalfYear] [smallint] NOT NULL,
[aaCalYear] [smallint] NOT NULL,
[aaFiscalWeek] [smallint] NOT NULL,
[aaFiscalPeriod] [smallint] NOT NULL,
[aaFiscalQuarter] [smallint] NOT NULL,
[aaFiscalHalfYear] [smallint] NOT NULL,
[aaFiscalYear] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00500] ADD CONSTRAINT [CK__AAG00500__DATE1__5FBEF025] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[AAG00500] ADD CONSTRAINT [PKAAG00500] PRIMARY KEY CLUSTERED  ([aaDateID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00500] ON [dbo].[AAG00500] ([aaFiscalYear], [DATE1], [aaDateID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00500] ON [dbo].[AAG00500] ([DATE1], [aaDateID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaDateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00500].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaCalWeek]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaCalMonth]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaCalQuarter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaCalHalfYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaCalYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaFiscalWeek]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaFiscalPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaFiscalQuarter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaFiscalHalfYear]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00500].[aaFiscalYear]'
GO
GRANT SELECT ON  [dbo].[AAG00500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00500] TO [DYNGRP]
GO
