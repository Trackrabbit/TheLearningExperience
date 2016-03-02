CREATE TABLE [dbo].[IV10301]
(
[STCKCNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BINNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CAPTUREDQTY] [numeric] (19, 5) NOT NULL,
[COUNTEDQTY] [numeric] (19, 5) NOT NULL,
[COUNTDATE] [datetime] NOT NULL,
[COUNTTIME] [datetime] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[IVIVINDX] [int] NOT NULL,
[Stock_Serial_Lot_Count] [numeric] (19, 5) NOT NULL,
[STCKSRLLTVRNC] [numeric] (19, 5) NOT NULL,
[IVVARIDX] [int] NOT NULL,
[VARIANCEQTY] [numeric] (19, 5) NOT NULL,
[VERIFIED] [tinyint] NOT NULL,
[Temp_Allocated_Quantity] [numeric] (19, 5) NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[Reason_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10301] ADD CONSTRAINT [CK__IV10301__COUNTTI__47FBA9D6] CHECK ((datepart(day,[COUNTTIME])=(1) AND datepart(month,[COUNTTIME])=(1) AND datepart(year,[COUNTTIME])=(1900)))
GO
ALTER TABLE [dbo].[IV10301] ADD CONSTRAINT [CK__IV10301__COUNTDA__4707859D] CHECK ((datepart(hour,[COUNTDATE])=(0) AND datepart(minute,[COUNTDATE])=(0) AND datepart(second,[COUNTDATE])=(0) AND datepart(millisecond,[COUNTDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10301] ADD CONSTRAINT [PKIV10301] PRIMARY KEY NONCLUSTERED  ([STCKCNTID], [ITEMNMBR], [LOCNCODE], [BINNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV10301] ON [dbo].[IV10301] ([ITEMNMBR], [LOCNCODE], [BINNMBR], [ACTIVE], [STCKCNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10301] ON [dbo].[IV10301] ([STCKCNTID], [LOCNCODE], [BINNMBR], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10301].[STCKCNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10301].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10301].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10301].[BINNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10301].[CAPTUREDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10301].[COUNTEDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10301].[COUNTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10301].[COUNTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10301].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10301].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10301].[IVIVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10301].[Stock_Serial_Lot_Count]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10301].[STCKSRLLTVRNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10301].[IVVARIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10301].[VARIANCEQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10301].[VERIFIED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10301].[Temp_Allocated_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10301].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10301].[Reason_Code]'
GO
GRANT SELECT ON  [dbo].[IV10301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10301] TO [DYNGRP]
GO
