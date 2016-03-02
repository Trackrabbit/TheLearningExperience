CREATE TABLE [dbo].[TX20500]
(
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[APFRDCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APFRDCTY] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[TaxRebateType] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[Taxable_Amount] [numeric] (19, 5) NOT NULL,
[Originating_Taxable_Amt] [numeric] (19, 5) NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[ECTRX] [tinyint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[CustomerVendor_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TX20500] ADD CONSTRAINT [CK__TX20500__DOCDATE__3671F678] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[TX20500] ADD CONSTRAINT [CK__TX20500__PSTGDAT__37661AB1] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[TX20500] ADD CONSTRAINT [CK__TX20500__Tax_Dat__385A3EEA] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[TX20500] ADD CONSTRAINT [PKTX20500] PRIMARY KEY NONCLUSTERED  ([DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3TX20500] ON [dbo].[TX20500] ([APFRDCNM], [APFRDCTY], [SERIES], [TaxRebateType], [TAXDTLID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2TX20500] ON [dbo].[TX20500] ([DOCNUMBR], [DOCTYPE], [SERIES], [TaxRebateType], [TAXDTLID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX20500].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX20500].[APFRDCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[APFRDCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[TaxRebateType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX20500].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX20500].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX20500].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX20500].[Taxable_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX20500].[Originating_Taxable_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX20500].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX20500].[ORDOCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[ECTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX20500].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX20500].[CustomerVendor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TX20500].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TX20500].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TX20500].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX20500].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[TX20500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TX20500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TX20500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TX20500] TO [DYNGRP]
GO
