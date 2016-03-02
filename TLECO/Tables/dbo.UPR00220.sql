CREATE TABLE [dbo].[UPR00220]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[PayCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Daily_Hours_1] [numeric] (19, 5) NOT NULL,
[Daily_Hours_2] [numeric] (19, 5) NOT NULL,
[Daily_Hours_3] [numeric] (19, 5) NOT NULL,
[Daily_Hours_4] [numeric] (19, 5) NOT NULL,
[Daily_Hours_5] [numeric] (19, 5) NOT NULL,
[Daily_Hours_6] [numeric] (19, 5) NOT NULL,
[Daily_Hours_7] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00220] ADD CONSTRAINT [PKUPR00220] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00220].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00220].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00220].[PayCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00220].[Daily_Hours_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00220].[Daily_Hours_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00220].[Daily_Hours_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00220].[Daily_Hours_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00220].[Daily_Hours_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00220].[Daily_Hours_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00220].[Daily_Hours_7]'
GO
GRANT SELECT ON  [dbo].[UPR00220] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00220] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00220] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00220] TO [DYNGRP]
GO
