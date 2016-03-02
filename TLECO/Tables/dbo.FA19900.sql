CREATE TABLE [dbo].[FA19900]
(
[ASSETINDEX] [int] NOT NULL,
[USRFIELD1] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD2] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD5] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD6] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD7] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD8] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD9] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD10] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRFIELD11] [numeric] (19, 5) NOT NULL,
[USRFIELD12] [numeric] (19, 5) NOT NULL,
[USRFIELD13] [numeric] (19, 5) NOT NULL,
[USRFIELD14] [numeric] (19, 5) NOT NULL,
[USRFIELD15] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA19900] ADD CONSTRAINT [CK__FA19900__LASTMNT__0BA79404] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA19900] ADD CONSTRAINT [CK__FA19900__LASTMNT__0AB36FCB] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA19900] ADD CONSTRAINT [PKFA19900] PRIMARY KEY CLUSTERED  ([ASSETINDEX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA19900] ON [dbo].[FA19900] ([ASSETINDEX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA19900].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[USRFIELD10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA19900].[USRFIELD11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA19900].[USRFIELD12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA19900].[USRFIELD13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA19900].[USRFIELD14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA19900].[USRFIELD15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA19900].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA19900].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA19900].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA19900].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA19900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA19900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA19900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA19900] TO [DYNGRP]
GO
