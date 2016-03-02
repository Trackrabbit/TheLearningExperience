CREATE TABLE [dbo].[B0501000]
(
[BSSI_Capital_Call_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestorInvestAmt] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISOCURRC] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRNCYSYM] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Owner_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Owner_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Broker_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Broker_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Call_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Owner_Due_Date] [datetime] NOT NULL,
[BSSI_STR255_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_5] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_6] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_7] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_8] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_9] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_10] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_11] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_12] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_13] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_14] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_15] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Attachment_Path] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0501000] ADD CONSTRAINT [CK__B0501000__BSSI_O__0DD62E50] CHECK ((datepart(hour,[BSSI_Owner_Due_Date])=(0) AND datepart(minute,[BSSI_Owner_Due_Date])=(0) AND datepart(second,[BSSI_Owner_Due_Date])=(0) AND datepart(millisecond,[BSSI_Owner_Due_Date])=(0)))
GO
ALTER TABLE [dbo].[B0501000] ADD CONSTRAINT [PKB0501000] PRIMARY KEY NONCLUSTERED  ([BSSI_Capital_Call_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_Capital_Call_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0501000].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0501000].[BSSI_InvestorInvestAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[ISOCURRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[CRNCYSYM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_Fund_Owner_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_Fund_Owner_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_Broker_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_Broker_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0501000].[BSSI_Fund_Call_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0501000].[BSSI_Owner_Due_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_STR255_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0501000].[BSSI_Attachment_Path]'
GO
GRANT SELECT ON  [dbo].[B0501000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0501000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0501000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0501000] TO [DYNGRP]
GO
