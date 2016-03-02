CREATE TABLE [dbo].[B0510053]
(
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Units_Available] [numeric] (19, 5) NOT NULL,
[BSSI_LastRevaluationAmou] [numeric] (19, 5) NOT NULL,
[BSSI_LastRevaluationDate] [datetime] NOT NULL,
[BSSI_Gain] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[BSSI_ExgMrkt] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Symbol] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQCOUNT] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510053] ADD CONSTRAINT [CK__B0510053__BSSI_L__17B49E45] CHECK ((datepart(hour,[BSSI_LastRevaluationDate])=(0) AND datepart(minute,[BSSI_LastRevaluationDate])=(0) AND datepart(second,[BSSI_LastRevaluationDate])=(0) AND datepart(millisecond,[BSSI_LastRevaluationDate])=(0)))
GO
ALTER TABLE [dbo].[B0510053] ADD CONSTRAINT [PKB0510053] PRIMARY KEY CLUSTERED  ([MJW_Investment_Number], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510053] ON [dbo].[B0510053] ([MJW_Investment_Number], [SEQCOUNT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510053].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510053].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510053].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510053].[BSSI_Units_Available]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510053].[BSSI_LastRevaluationAmou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510053].[BSSI_LastRevaluationDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510053].[BSSI_Gain]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510053].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510053].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510053].[BSSI_ExgMrkt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510053].[BSSI_Symbol]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510053].[SEQCOUNT]'
GO
GRANT SELECT ON  [dbo].[B0510053] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510053] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510053] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510053] TO [DYNGRP]
GO
