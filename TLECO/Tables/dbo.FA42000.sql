CREATE TABLE [dbo].[FA42000]
(
[TRANSFEREVENT] [int] NOT NULL,
[XFEREVENTDESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA42000] ADD CONSTRAINT [CK__FA42000__LASTMNT__45D43599] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA42000] ADD CONSTRAINT [CK__FA42000__LASTMNT__44E01160] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA42000] ADD CONSTRAINT [PKFA42000] PRIMARY KEY CLUSTERED  ([TRANSFEREVENT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA42000].[TRANSFEREVENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA42000].[XFEREVENTDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA42000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA42000].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA42000].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA42000].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA42000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA42000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA42000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA42000] TO [DYNGRP]
GO
