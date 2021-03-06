CREATE TABLE [dbo].[FA41700]
(
[RETIREEVENT] [int] NOT NULL,
[EVENTDSC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA41700] ADD CONSTRAINT [CK__FA41700__LASTMNT__3E3313D1] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA41700] ADD CONSTRAINT [CK__FA41700__LASTMNT__3D3EEF98] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA41700] ADD CONSTRAINT [PKFA41700] PRIMARY KEY CLUSTERED  ([RETIREEVENT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA41700].[RETIREEVENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41700].[EVENTDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA41700].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA41700].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA41700].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA41700].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA41700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA41700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA41700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA41700] TO [DYNGRP]
GO
