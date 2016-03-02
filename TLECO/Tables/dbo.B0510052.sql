CREATE TABLE [dbo].[B0510052]
(
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[MJW_Transaction_Type] [smallint] NOT NULL,
[MJW_Transaction_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Original_Capital_Old] [numeric] (19, 5) NOT NULL,
[MJW_Original_Capital_New] [numeric] (19, 5) NOT NULL,
[MJW_Units_Purchased_Old] [numeric] (19, 5) NOT NULL,
[MJW_Units_Purchased_New] [numeric] (19, 5) NOT NULL,
[MJW_Transaction_Date] [datetime] NOT NULL,
[MJW_Transaction_User] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Interest_Amount] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510052] ADD CONSTRAINT [CK__B0510052__MJW_Tr__6FB199E3] CHECK ((datepart(hour,[MJW_Transaction_Date])=(0) AND datepart(minute,[MJW_Transaction_Date])=(0) AND datepart(second,[MJW_Transaction_Date])=(0) AND datepart(millisecond,[MJW_Transaction_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510052] ADD CONSTRAINT [PKB0510052] PRIMARY KEY NONCLUSTERED  ([MJW_Investment_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B0510052] ON [dbo].[B0510052] ([MJW_Investment_Number], [MJW_Transaction_Date], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0510052] ON [dbo].[B0510052] ([MJW_Investment_Number], [MJW_Transaction_Date], [MJW_Original_Capital_Old], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B0510052] ON [dbo].[B0510052] ([MJW_Investment_Number], [MJW_Transaction_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B0510052] ON [dbo].[B0510052] ([MJW_Transaction_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B0510052] ON [dbo].[B0510052] ([VENDORID], [MJW_Transaction_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510052].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510052].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510052].[MJW_Transaction_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510052].[MJW_Transaction_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510052].[MJW_Original_Capital_Old]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510052].[MJW_Original_Capital_New]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510052].[MJW_Units_Purchased_Old]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510052].[MJW_Units_Purchased_New]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510052].[MJW_Transaction_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510052].[MJW_Transaction_User]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510052].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510052].[MJW_Interest_Amount]'
GO
GRANT SELECT ON  [dbo].[B0510052] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510052] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510052] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510052] TO [DYNGRP]
GO
