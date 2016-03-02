CREATE TABLE [dbo].[SVC05620]
(
[RTV_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Line] [numeric] (19, 5) NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SVCFRMSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVCTOSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRPTION] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05620] ADD CONSTRAINT [CK__SVC05620__CREATE__3059F5C6] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC05620] ADD CONSTRAINT [CK__SVC05620__CREATD__2F65D18D] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC05620] ADD CONSTRAINT [PKSVC05620] PRIMARY KEY CLUSTERED  ([RTV_Number], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC05620] ON [dbo].[SVC05620] ([RTV_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05620].[RTV_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05620].[RTV_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05620].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05620].[SVCFRMSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05620].[SVCTOSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05620].[DSCRPTION]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05620].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05620].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05620].[CREATETIME]'
GO
GRANT SELECT ON  [dbo].[SVC05620] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05620] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05620] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05620] TO [DYNGRP]
GO
