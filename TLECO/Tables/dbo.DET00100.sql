CREATE TABLE [dbo].[DET00100]
(
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXDTLDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXDTLTYP] [smallint] NOT NULL,
[TXDTLBSE] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[TXDTLPCT] [numeric] (19, 5) NOT NULL,
[TXDTLAMT] [numeric] (19, 5) NOT NULL,
[TaxBaseDescription] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DET00100] ADD CONSTRAINT [PKDET00100] PRIMARY KEY NONCLUSTERED  ([TAXDTLID], [STRTDATE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DET00100].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DET00100].[TXDTLDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DET00100].[TXDTLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DET00100].[TXDTLBSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DET00100].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DET00100].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DET00100].[TXDTLPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DET00100].[TXDTLAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DET00100].[TaxBaseDescription]'
GO
GRANT SELECT ON  [dbo].[DET00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DET00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DET00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DET00100] TO [DYNGRP]
GO
