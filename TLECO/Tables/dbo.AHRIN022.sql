CREATE TABLE [dbo].[AHRIN022]
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
ALTER TABLE [dbo].[AHRIN022] ADD CONSTRAINT [CK__AHRIN022__CHANGE__2473A562] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRIN022] ADD CONSTRAINT [CK__AHRIN022__IDATE___2567C99B] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRIN022] ADD CONSTRAINT [PKAHRIN022] PRIMARY KEY CLUSTERED  ([INJURYNUMBER_I], [ISERIALNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHRIN022] ON [dbo].[AHRIN022] ([EMPID_I], [INJURYNUMBER_I], [ISERIALNUMBER_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[INJURYNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[ISERIALNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[CLINICCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[DOCTORCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[MEDICATIONCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[OTHERCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[TESTCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[THERAPYCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[TOTALCOSTS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[CMNTS1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[CMNTS2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[CMNTS3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[CMNTS4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRIN022].[IDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRIN022].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRIN022].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRIN022].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AHRIN022] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHRIN022] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHRIN022] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHRIN022] TO [DYNGRP]
GO
