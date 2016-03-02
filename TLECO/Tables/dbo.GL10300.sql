CREATE TABLE [dbo].[GL10300]
(
[JRNENTRY] [int] NOT NULL,
[RCTRXSEQ] [numeric] (19, 5) NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[SQNCLINE2] [numeric] (19, 5) NOT NULL,
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[Taxable_Amount] [numeric] (19, 5) NOT NULL,
[Originating_Taxable_Amt] [numeric] (19, 5) NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[TXDTLPCT] [numeric] (19, 5) NOT NULL,
[TXDTLAMT] [numeric] (19, 5) NOT NULL,
[TXDTLTYP] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL10300] ADD CONSTRAINT [CK__GL10300__DOCDATE__7DCDAAA2] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10300] ADD CONSTRAINT [CK__GL10300__PSTGDAT__7EC1CEDB] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[GL10300] ADD CONSTRAINT [CK__GL10300__Tax_Dat__7FB5F314] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[GL10300] ADD CONSTRAINT [PKGL10300] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [RCTRXSEQ], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL10300] ON [dbo].[GL10300] ([JRNENTRY], [RCTRXSEQ], [SQNCLINE2]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10300].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[RCTRXSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[SQNCLINE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL10300].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10300].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10300].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL10300].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[Taxable_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[Originating_Taxable_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[ORDOCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[TXDTLPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL10300].[TXDTLAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10300].[TXDTLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10300].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL10300].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[GL10300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL10300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL10300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL10300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL10300] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[GL10300] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[GL10300] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[GL10300] TO [RAPIDGRP]
GO
