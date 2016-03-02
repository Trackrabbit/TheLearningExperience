CREATE TABLE [dbo].[UPR00222]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DayOfWeek] [smallint] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[UNTSTOPY] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00222] ADD CONSTRAINT [CK__UPR00222__ENDTIM__705D3C07] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[UPR00222] ADD CONSTRAINT [CK__UPR00222__STRTTI__71516040] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[UPR00222] ADD CONSTRAINT [PKUPR00222] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [SEQNUMBR], [DayOfWeek], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00222].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00222].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00222].[DayOfWeek]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00222].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00222].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00222].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00222].[UNTSTOPY]'
GO
GRANT SELECT ON  [dbo].[UPR00222] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00222] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00222] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00222] TO [DYNGRP]
GO
