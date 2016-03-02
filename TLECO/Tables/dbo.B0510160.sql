CREATE TABLE [dbo].[B0510160]
(
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[PERNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIODDT] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510160] ADD CONSTRAINT [CK__B0510160__PERIOD__18499B22] CHECK ((datepart(hour,[PERIODDT])=(0) AND datepart(minute,[PERIODDT])=(0) AND datepart(second,[PERIODDT])=(0) AND datepart(millisecond,[PERIODDT])=(0)))
GO
ALTER TABLE [dbo].[B0510160] ADD CONSTRAINT [PKB0510160] PRIMARY KEY CLUSTERED  ([YEAR1], [PERIODID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510160].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510160].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510160].[PERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510160].[PERIODDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510160].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0510160] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510160] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510160] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510160] TO [DYNGRP]
GO
