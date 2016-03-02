CREATE TABLE [dbo].[B4603201]
(
[BSSI_CPI_Schedule_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_CPI_Date] [datetime] NOT NULL,
[BSSI_CPI_Index] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4603201] ADD CONSTRAINT [CK__B4603201__BSSI_C__5B5666D2] CHECK ((datepart(hour,[BSSI_CPI_Date])=(0) AND datepart(minute,[BSSI_CPI_Date])=(0) AND datepart(second,[BSSI_CPI_Date])=(0) AND datepart(millisecond,[BSSI_CPI_Date])=(0)))
GO
ALTER TABLE [dbo].[B4603201] ADD CONSTRAINT [PKB4603201] PRIMARY KEY NONCLUSTERED  ([BSSI_CPI_Schedule_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4603201] ON [dbo].[B4603201] ([BSSI_CPI_Schedule_ID], [BSSI_CPI_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603201].[BSSI_CPI_Schedule_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603201].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603201].[BSSI_CPI_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603201].[BSSI_CPI_Index]'
GO
GRANT SELECT ON  [dbo].[B4603201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4603201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4603201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4603201] TO [DYNGRP]
GO
