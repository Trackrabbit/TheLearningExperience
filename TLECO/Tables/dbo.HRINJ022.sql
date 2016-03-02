CREATE TABLE [dbo].[HRINJ022]
(
[INJURYNUMBER_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISERIALNUMBER_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CLINICCOSTS_I] [numeric] (19, 5) NOT NULL,
[DOCTORCOSTS_I] [numeric] (19, 5) NOT NULL,
[MEDICATIONCOSTS_I] [numeric] (19, 5) NOT NULL,
[OTHERCOSTS_I] [numeric] (19, 5) NOT NULL,
[TESTCOSTS_I] [numeric] (19, 5) NOT NULL,
[THERAPYCOSTS_I] [numeric] (19, 5) NOT NULL,
[TOTALCOSTS_I] [numeric] (19, 5) NOT NULL,
[CMNTS1_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMNTS2_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMNTS3_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMNTS4_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRINJ022] ADD CONSTRAINT [CK__HRINJ022__CHANGE__20F81A39] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRINJ022] ADD CONSTRAINT [CK__HRINJ022__IDATE___21EC3E72] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRINJ022] ADD CONSTRAINT [PKHRINJ022] PRIMARY KEY CLUSTERED  ([INJURYNUMBER_I], [ISERIALNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HRINJ022] ON [dbo].[HRINJ022] ([EMPID_I], [INJURYNUMBER_I], [ISERIALNUMBER_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[INJURYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[ISERIALNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[CLINICCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[DOCTORCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[MEDICATIONCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[OTHERCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[TESTCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[THERAPYCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[TOTALCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[CMNTS1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[CMNTS2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[CMNTS3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[CMNTS4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRINJ022].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRINJ022].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRINJ022].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HRINJ022].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[HRINJ022] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRINJ022] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRINJ022] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRINJ022] TO [DYNGRP]
GO
