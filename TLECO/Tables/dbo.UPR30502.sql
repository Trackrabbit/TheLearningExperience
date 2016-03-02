CREATE TABLE [dbo].[UPR30502]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[TRXNUMBER] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[UNTSTOPY] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR30502] ADD CONSTRAINT [CK__UPR30502__ENDTIM__0187C809] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[UPR30502] ADD CONSTRAINT [CK__UPR30502__STRTTI__027BEC42] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[UPR30502] ADD CONSTRAINT [PKUPR30502] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [Pay_Schedule], [YEAR1], [PERIODID], [TRXNUMBER], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30502].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30502].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30502].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30502].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30502].[TRXNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30502].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30502].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR30502].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR30502].[UNTSTOPY]'
GO
GRANT SELECT ON  [dbo].[UPR30502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30502] TO [DYNGRP]
GO
