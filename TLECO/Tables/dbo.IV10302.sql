CREATE TABLE [dbo].[IV10302]
(
[STCKCNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BINNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTEDQTY] [numeric] (19, 5) NOT NULL,
[CAPTUREDQTY] [numeric] (19, 5) NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[SERLTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIALSTATUS] [smallint] NOT NULL,
[VARIANCEQTY] [numeric] (19, 5) NOT NULL,
[VERIFIED] [tinyint] NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[Temp_Allocated_Quantity] [numeric] (19, 5) NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV10302] ADD CONSTRAINT [CK__IV10302__DATEREC__4AD81681] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[IV10302] ADD CONSTRAINT [CK__IV10302__EXPNDAT__4BCC3ABA] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10302] ADD CONSTRAINT [CK__IV10302__MFGDATE__4CC05EF3] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[IV10302] ADD CONSTRAINT [PKIV10302] PRIMARY KEY NONCLUSTERED  ([STCKCNTID], [ITEMNMBR], [LOCNCODE], [BINNMBR], [SERLTNUM], [DATERECD], [DTSEQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV10302] ON [dbo].[IV10302] ([ITEMNMBR], [LOCNCODE], [BINNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IV10302] ON [dbo].[IV10302] ([ITEMNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV10302] ON [dbo].[IV10302] ([SERLTNUM], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10302].[STCKCNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10302].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10302].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10302].[BINNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10302].[COUNTEDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10302].[CAPTUREDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10302].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10302].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10302].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV10302].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10302].[SERIALSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10302].[VARIANCEQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10302].[VERIFIED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV10302].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV10302].[Temp_Allocated_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10302].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV10302].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[IV10302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV10302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV10302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV10302] TO [DYNGRP]
GO
