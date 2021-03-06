CREATE TABLE [dbo].[FA41600]
(
[LEASECOMPINDX] [int] NOT NULL,
[LEASECOMPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA41600] ADD CONSTRAINT [CK__FA41600__LASTMNT__3A6282ED] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA41600] ADD CONSTRAINT [CK__FA41600__LASTMNT__396E5EB4] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA41600] ADD CONSTRAINT [PKFA41600] PRIMARY KEY CLUSTERED  ([LEASECOMPINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA41600] ON [dbo].[FA41600] ([LEASECOMPID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA41600] ON [dbo].[FA41600] ([VENDORID], [LEASECOMPID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41600].[LEASECOMPINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41600].[LEASECOMPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41600].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA41600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA41600].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA41600].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41600].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA41600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA41600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA41600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA41600] TO [DYNGRP]
GO
