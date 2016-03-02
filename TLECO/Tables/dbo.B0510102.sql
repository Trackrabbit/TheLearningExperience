CREATE TABLE [dbo].[B0510102]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[MJW_Agency] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Selling_Date] [datetime] NOT NULL,
[MJW_Who_Letter] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Cleared_Date] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510102] ADD CONSTRAINT [CK__B0510102__MJW_Cl__4DC69633] CHECK ((datepart(hour,[MJW_Cleared_Date])=(0) AND datepart(minute,[MJW_Cleared_Date])=(0) AND datepart(second,[MJW_Cleared_Date])=(0) AND datepart(millisecond,[MJW_Cleared_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510102] ADD CONSTRAINT [CK__B0510102__MJW_Se__4CD271FA] CHECK ((datepart(hour,[MJW_Selling_Date])=(0) AND datepart(minute,[MJW_Selling_Date])=(0) AND datepart(second,[MJW_Selling_Date])=(0) AND datepart(millisecond,[MJW_Selling_Date])=(0)))
GO
ALTER TABLE [dbo].[B0510102] ADD CONSTRAINT [PKB0510102] PRIMARY KEY NONCLUSTERED  ([VENDORID], [MJW_Offering_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510102].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510102].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510102].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510102].[MJW_Agency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510102].[MJW_Selling_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510102].[MJW_Who_Letter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510102].[MJW_Cleared_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510102].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510102] TO [DYNGRP]
GO
