CREATE TABLE [dbo].[FA00300]
(
[ASSETINDEX] [int] NOT NULL,
[BOOKINDX] [int] NOT NULL,
[TEFRAFLAG] [smallint] NOT NULL,
[ITCAMTTAKEN] [numeric] (19, 5) NOT NULL,
[ITCAMTALLOWED] [numeric] (19, 5) NOT NULL,
[ITCRECAPTURE] [numeric] (19, 5) NOT NULL,
[ORGCOSTBASIS] [numeric] (19, 5) NOT NULL,
[SECT179EXPDED] [numeric] (19, 5) NOT NULL,
[ITCCODEREDAMT] [numeric] (19, 5) NOT NULL,
[MISCCOSTADJ] [numeric] (19, 5) NOT NULL,
[NETCOSTBASIS] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA00300] ADD CONSTRAINT [CK__FA00300__LASTMNT__043B7C66] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA00300] ADD CONSTRAINT [CK__FA00300__LASTMNT__0347582D] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00300] ADD CONSTRAINT [PKFA00300] PRIMARY KEY CLUSTERED  ([ASSETINDEX], [BOOKINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00300] ON [dbo].[FA00300] ([ASSETINDEX], [BOOKINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00300].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00300].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00300].[TEFRAFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[ITCAMTTAKEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[ITCAMTALLOWED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[ITCRECAPTURE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[ORGCOSTBASIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[SECT179EXPDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[ITCCODEREDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[MISCCOSTADJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[NETCOSTBASIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00300].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00300].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00300].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA00300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00300] TO [DYNGRP]
GO
