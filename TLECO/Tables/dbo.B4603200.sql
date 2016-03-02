CREATE TABLE [dbo].[B4603200]
(
[BSSI_CPI_Schedule_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_CPIIndexCalculation] [smallint] NOT NULL,
[BSSI_CPIIndexAmtCalculat] [smallint] NOT NULL,
[BSSI_EscalateEffective] [tinyint] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4603200] ADD CONSTRAINT [CK__B4603200__TIME1__4EF08FED] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B4603200] ADD CONSTRAINT [CK__B4603200__DATE1__4DFC6BB4] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4603200] ADD CONSTRAINT [PKB4603200] PRIMARY KEY NONCLUSTERED  ([BSSI_CPI_Schedule_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4603200] ON [dbo].[B4603200] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603200].[BSSI_CPI_Schedule_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603200].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603200].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603200].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603200].[BSSI_CPIIndexCalculation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603200].[BSSI_CPIIndexAmtCalculat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603200].[BSSI_EscalateEffective]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603200].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4603200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4603200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4603200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4603200] TO [DYNGRP]
GO
