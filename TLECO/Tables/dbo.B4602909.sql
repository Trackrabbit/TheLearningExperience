CREATE TABLE [dbo].[B4602909]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Commencement_Date] [datetime] NOT NULL,
[BSSI_Lead_Time] [smallint] NOT NULL,
[BSSI_Renewal_Type] [smallint] NOT NULL,
[BSSI_First_Term_Months] [int] NOT NULL,
[BSSI_First_Term_Qty] [int] NOT NULL,
[BSSI_First_Term_Years] [int] NOT NULL,
[BSSI_Renewal_Option_Qty] [int] NOT NULL,
[BSSI_Renewal_Option_Mont] [int] NOT NULL,
[BSSI_Renewal_Option_Year] [int] NOT NULL,
[BSSI_Total_Lease_Terms_M] [int] NOT NULL,
[BSSI_Alignment] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602909] ADD CONSTRAINT [CK__B4602909__BSSI_C__0D62C3B2] CHECK ((datepart(hour,[BSSI_Commencement_Date])=(0) AND datepart(minute,[BSSI_Commencement_Date])=(0) AND datepart(second,[BSSI_Commencement_Date])=(0) AND datepart(millisecond,[BSSI_Commencement_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602909] ADD CONSTRAINT [PKB4602909] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602909].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602909].[BSSI_Commencement_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_Lead_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_Renewal_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_First_Term_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_First_Term_Qty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_First_Term_Years]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_Renewal_Option_Qty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_Renewal_Option_Mont]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_Renewal_Option_Year]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_Total_Lease_Terms_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602909].[BSSI_Alignment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602909].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602909] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602909] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602909] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602909] TO [DYNGRP]
GO
