CREATE TABLE [dbo].[UPR00902]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[LPCHKNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTPCKDT] [datetime] NOT NULL,
[LPCHKAMT] [numeric] (19, 5) NOT NULL,
[Gross_Wages_Fiscal] [numeric] (19, 5) NOT NULL,
[Federal_Withholding_Fisc] [numeric] (19, 5) NOT NULL,
[FICASS_Wages_Fiscal] [numeric] (19, 5) NOT NULL,
[FICAMED_Wages_Fiscal] [numeric] (19, 5) NOT NULL,
[FICASS_Withholding_Fisca] [numeric] (19, 5) NOT NULL,
[FICAMED_Withholding_Fisc] [numeric] (19, 5) NOT NULL,
[Suta_Wages_Fiscal] [numeric] (19, 5) NOT NULL,
[Futa_Wages_Fiscal] [numeric] (19, 5) NOT NULL,
[Net_Wages_Fiscal] [numeric] (19, 5) NOT NULL,
[Federal_Wages_Fiscal] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00902] ADD CONSTRAINT [CK__UPR00902__LSTPCK__783FB9D5] CHECK ((datepart(hour,[LSTPCKDT])=(0) AND datepart(minute,[LSTPCKDT])=(0) AND datepart(second,[LSTPCKDT])=(0) AND datepart(millisecond,[LSTPCKDT])=(0)))
GO
ALTER TABLE [dbo].[UPR00902] ADD CONSTRAINT [PKUPR00902] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00902].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00902].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00902].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00902].[LPCHKNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00902].[LSTPCKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[LPCHKAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[Gross_Wages_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[Federal_Withholding_Fisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[FICASS_Wages_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[FICAMED_Wages_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[FICASS_Withholding_Fisca]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[FICAMED_Withholding_Fisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[Suta_Wages_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[Futa_Wages_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[Net_Wages_Fiscal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00902].[Federal_Wages_Fiscal]'
GO
GRANT SELECT ON  [dbo].[UPR00902] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00902] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00902] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00902] TO [DYNGRP]
GO
