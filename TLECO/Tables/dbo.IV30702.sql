CREATE TABLE [dbo].[IV30702]
(
[STCKCNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BINNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[COUNTEDQTY] [numeric] (19, 5) NOT NULL,
[CAPTUREDQTY] [numeric] (19, 5) NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[IVDOCNBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVDOCTYP] [smallint] NOT NULL,
[SERLTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VARIANCEQTY] [numeric] (19, 5) NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV30702] ADD CONSTRAINT [CK__IV30702__EXPNDAT__02284B6B] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[IV30702] ADD CONSTRAINT [CK__IV30702__MFGDATE__031C6FA4] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[IV30702] ADD CONSTRAINT [PKIV30702] PRIMARY KEY NONCLUSTERED  ([STCKCNTID], [SEQNUMBR], [ITEMNMBR], [LOCNCODE], [BINNMBR], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV30702] ON [dbo].[IV30702] ([ITEMNMBR], [SERLTNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV30702] ON [dbo].[IV30702] ([SERLTNUM], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30702].[STCKCNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30702].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30702].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30702].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30702].[BINNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30702].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30702].[COUNTEDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30702].[CAPTUREDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30702].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30702].[IVDOCNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30702].[IVDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30702].[SERLTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30702].[VARIANCEQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV30702].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV30702].[EXPNDATE]'
GO
GRANT SELECT ON  [dbo].[IV30702] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV30702] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV30702] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV30702] TO [DYNGRP]
GO
