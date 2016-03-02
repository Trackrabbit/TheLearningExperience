CREATE TABLE [dbo].[XLImport]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BUDGETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODDT] [datetime] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[BUDGETAMT] [numeric] (19, 5) NOT NULL,
[ACCATNUM] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XLImport] ADD CONSTRAINT [CK__XLImport__PERIOD__7C7F2317] CHECK ((datepart(hour,[PERIODDT])=(0) AND datepart(minute,[PERIODDT])=(0) AND datepart(second,[PERIODDT])=(0) AND datepart(millisecond,[PERIODDT])=(0)))
GO
ALTER TABLE [dbo].[XLImport] ADD CONSTRAINT [PKXLImport] PRIMARY KEY NONCLUSTERED  ([USERID], [BUDGETID], [ACTINDX], [PERIODDT], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLImport].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLImport].[BUDGETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLImport].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLImport].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLImport].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLImport].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[XLImport].[PERIODDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[XLImport].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[XLImport].[BUDGETAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[XLImport].[ACCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[XLImport].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[XLImport] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[XLImport] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[XLImport] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[XLImport] TO [DYNGRP]
GO
