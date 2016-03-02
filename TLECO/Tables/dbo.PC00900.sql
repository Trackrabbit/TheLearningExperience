CREATE TABLE [dbo].[PC00900]
(
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[YTDWAGES] [numeric] (19, 5) NOT NULL,
[BNFITAMTYTD] [numeric] (19, 5) NOT NULL,
[YTDTAX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC00900] ADD CONSTRAINT [CK__PC00900__STRTDAT__21B73448] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[PC00900] ADD CONSTRAINT [PKPC00900] PRIMARY KEY NONCLUSTERED  ([JOBTITLE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC00900].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC00900].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC00900].[YTDWAGES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC00900].[BNFITAMTYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC00900].[YTDTAX]'
GO
GRANT SELECT ON  [dbo].[PC00900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC00900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC00900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC00900] TO [DYNGRP]
GO
