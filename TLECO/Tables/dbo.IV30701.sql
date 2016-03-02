CREATE TABLE [dbo].[IV30701]
(
[STCKCNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BINNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BASEUOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTEDQTY] [numeric] (19, 5) NOT NULL,
[CAPTUREDQTY] [numeric] (19, 5) NOT NULL,
[CPTRDT] [datetime] NOT NULL,
[CPTRTM] [datetime] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[IVDOCNBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVDOCTYP] [smallint] NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[VARIANCEQTY] [numeric] (19, 5) NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[Reason_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV30701] ADD CONSTRAINT [CK__IV30701__CPTRTM__7F4BDEC0] CHECK ((datepart(day,[CPTRTM])=(1) AND datepart(month,[CPTRTM])=(1) AND datepart(year,[CPTRTM])=(1900)))
GO
ALTER TABLE [dbo].[IV30701] ADD CONSTRAINT [CK__IV30701__CPTRDT__7E57BA87] CHECK ((datepart(hour,[CPTRDT])=(0) AND datepart(minute,[CPTRDT])=(0) AND datepart(second,[CPTRDT])=(0) AND datepart(millisecond,[CPTRDT])=(0)))
GO
ALTER TABLE [dbo].[IV30701] ADD CONSTRAINT [PKIV30701] PRIMARY KEY NONCLUSTERED  ([STCKCNTID], [SEQNUMBR], [ITEMNMBR], [LOCNCODE], [BINNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV30701] ON [dbo].[IV30701] ([ITEMNMBR], [LOCNCODE], [BINNMBR], [STCKCNTID], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV30701] ON [dbo].[IV30701] ([LOCNCODE], [BINNMBR], [ITEMNMBR], [STCKCNTID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30701].[STCKCNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30701].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30701].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30701].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30701].[BINNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30701].[BASEUOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30701].[COUNTEDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30701].[CAPTUREDQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV30701].[CPTRDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV30701].[CPTRTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30701].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30701].[IVDOCNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30701].[IVDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30701].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30701].[VARIANCEQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30701].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30701].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30701].[Reason_Code]'
GO
GRANT SELECT ON  [dbo].[IV30701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV30701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV30701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV30701] TO [DYNGRP]
GO
