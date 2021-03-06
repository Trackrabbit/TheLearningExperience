CREATE TABLE [dbo].[UPR00112]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[UNIVERSITY] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEGREE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MAJOR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GPA] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GPABASE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GRADUATIONYEAR] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEARS] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00112] ADD CONSTRAINT [CK__UPR00112__CHANGE__54F67D98] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00112] ADD CONSTRAINT [PKUPR00112] PRIMARY KEY CLUSTERED  ([EMPLOYID], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR00112] ON [dbo].[UPR00112] ([DEGREE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR00112] ON [dbo].[UPR00112] ([GPA], [GPABASE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR00112] ON [dbo].[UPR00112] ([MAJOR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00112].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[UNIVERSITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[DEGREE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[MAJOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[GPA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[GPABASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[GRADUATIONYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[YEARS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00112].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00112].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00112].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[UPR00112] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00112] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00112] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00112] TO [DYNGRP]
GO
