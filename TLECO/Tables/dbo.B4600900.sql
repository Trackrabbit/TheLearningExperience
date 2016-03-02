CREATE TABLE [dbo].[B4600900]
(
[BSSI_ParentCompanyID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LSTEDTDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600900] ADD CONSTRAINT [CK__B4600900__CREATD__3684D4D6] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[B4600900] ADD CONSTRAINT [CK__B4600900__LSTEDT__3778F90F] CHECK ((datepart(hour,[LSTEDTDT])=(0) AND datepart(minute,[LSTEDTDT])=(0) AND datepart(second,[LSTEDTDT])=(0) AND datepart(millisecond,[LSTEDTDT])=(0)))
GO
ALTER TABLE [dbo].[B4600900] ADD CONSTRAINT [PKB4600900] PRIMARY KEY NONCLUSTERED  ([BSSI_ParentCompanyID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4600900] ON [dbo].[B4600900] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4600900] ON [dbo].[B4600900] ([CRUSRID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4600900] ON [dbo].[B4600900] ([LSTUSRED], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[BSSI_ParentCompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[COMMENT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[COMMENT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[COMMENT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[COMMENT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4600900].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4600900].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600900].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4600900].[LSTEDTDT]'
GO
GRANT SELECT ON  [dbo].[B4600900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600900] TO [DYNGRP]
GO
