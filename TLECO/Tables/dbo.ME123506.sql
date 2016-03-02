CREATE TABLE [dbo].[ME123506]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paidtorcvdfrom] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxType] [smallint] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[VOIDDATE] [datetime] NOT NULL,
[ME_Dummy_File_Convert_De] [tinyint] NOT NULL,
[CNTRLNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEVDTXTP] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME123506] ADD CONSTRAINT [CK__ME123506__VOIDDA__3A6B3FAA] CHECK ((datepart(hour,[VOIDDATE])=(0) AND datepart(minute,[VOIDDATE])=(0) AND datepart(second,[VOIDDATE])=(0) AND datepart(millisecond,[VOIDDATE])=(0)))
GO
ALTER TABLE [dbo].[ME123506] ADD CONSTRAINT [PKME123506] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1ME123506] ON [dbo].[ME123506] ([CHEKBKID], [CMTrxNum], [CMTrxType]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1ME123506] ON [dbo].[ME123506] ([CHEKBKID], [CMTrxNum], [CMTrxType], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME123506] ON [dbo].[ME123506] ([CHEKBKID], [VOIDDATE], [CMTrxNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123506].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123506].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123506].[paidtorcvdfrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123506].[CMTrxType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME123506].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME123506].[VOIDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123506].[ME_Dummy_File_Convert_De]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME123506].[CNTRLNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME123506].[MEVDTXTP]'
GO
GRANT SELECT ON  [dbo].[ME123506] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME123506] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME123506] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME123506] TO [DYNGRP]
GO
