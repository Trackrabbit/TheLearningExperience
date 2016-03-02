CREATE TABLE [dbo].[SVC05635]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Line] [numeric] (19, 5) NOT NULL,
[RTV_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Part_Cost] [numeric] (19, 5) NOT NULL,
[Part_Price] [numeric] (19, 5) NOT NULL,
[Labor_Cost] [numeric] (19, 5) NOT NULL,
[Labor_Price] [numeric] (19, 5) NOT NULL,
[Expense_Cost] [numeric] (19, 5) NOT NULL,
[Expense_Price] [numeric] (19, 5) NOT NULL,
[Travel_Cost] [numeric] (19, 5) NOT NULL,
[Travel_Price] [numeric] (19, 5) NOT NULL,
[Originating_Part_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Part_Price] [numeric] (19, 5) NOT NULL,
[Originating_Labor_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Labor_Price] [numeric] (19, 5) NOT NULL,
[Originating_Expense_Cost] [numeric] (19, 5) NOT NULL,
[Originating_ExpensePrice] [numeric] (19, 5) NOT NULL,
[Originating_Travel_Cost] [numeric] (19, 5) NOT NULL,
[Originating_Travel_Price] [numeric] (19, 5) NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[ERMSGNBR] [smallint] NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTX2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05635] ADD CONSTRAINT [PKSVC05635] PRIMARY KEY NONCLUSTERED  ([USERID], [RTV_Number], [RTV_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC05635] ON [dbo].[SVC05635] ([USERID], [MKDTOPST], [RTV_Number], [RTV_Line]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[RTV_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[RTV_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[RTV_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[VNDITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Part_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Part_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Labor_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Labor_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Expense_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Expense_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Travel_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Travel_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_Part_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_Part_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_Labor_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_Labor_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_Expense_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_ExpensePrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_Travel_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05635].[Originating_Travel_Price]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05635].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05635].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05635].[ERMSGNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05635].[ERMSGTX2]'
GO
GRANT SELECT ON  [dbo].[SVC05635] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05635] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05635] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05635] TO [DYNGRP]
GO
