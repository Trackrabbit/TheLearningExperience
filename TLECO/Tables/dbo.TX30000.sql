CREATE TABLE [dbo].[TX30000]
(
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[SERIES] [smallint] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXDTLPCT] [numeric] (19, 5) NOT NULL,
[TXDTLAMT] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[Taxable_Amount] [numeric] (19, 5) NOT NULL,
[Originating_Taxable_Amt] [numeric] (19, 5) NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[ECTRX] [tinyint] NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[CustomerVendor_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[Included_On_Return] [tinyint] NOT NULL,
[Tax_Return_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXORGN] [smallint] NOT NULL,
[TXDTLTYP] [smallint] NOT NULL,
[TRXSTATS] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETNUM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[INVATRET] [tinyint] NOT NULL,
[VATCOLCD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VATRPTID] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Revision_Number] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[ISGLTRX] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TX30000] ADD CONSTRAINT [CK__TX30000__DOCDATE__3B36AB95] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[TX30000] ADD CONSTRAINT [CK__TX30000__PSTGDAT__3C2ACFCE] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[TX30000] ADD CONSTRAINT [CK__TX30000__Tax_Dat__3D1EF407] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[TX30000] ADD CONSTRAINT [PKTX30000] PRIMARY KEY NONCLUSTERED  ([DOCNUMBR], [DOCTYPE], [SERIES], [RCTRXSEQ], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK15TX30000] ON [dbo].[TX30000] ([ACTINDX], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK14TX30000] ON [dbo].[TX30000] ([INVATRET], [SERIES], [VATRPTID], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK13TX30000] ON [dbo].[TX30000] ([INVATRET], [VATRPTID], [YEAR1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK12TX30000] ON [dbo].[TX30000] ([RETNUM], [SERIES], [VATRPTID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7TX30000] ON [dbo].[TX30000] ([Tax_Return_ID], [Included_On_Return], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2TX30000] ON [dbo].[TX30000] ([TAXDTLID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[TXDTLPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[TXDTLAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TX30000].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TX30000].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TX30000].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[Taxable_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[Originating_Taxable_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX30000].[ORDOCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[ECTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[VOIDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[CustomerVendor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[Included_On_Return]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[Tax_Return_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[TXORGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[TXDTLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[TRXSTATS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[RETNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[INVATRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[VATCOLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX30000].[VATRPTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[Revision_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX30000].[ISGLTRX]'
GO
GRANT SELECT ON  [dbo].[TX30000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TX30000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TX30000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TX30000] TO [DYNGRP]
GO
