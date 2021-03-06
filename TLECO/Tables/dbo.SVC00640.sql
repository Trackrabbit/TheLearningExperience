CREATE TABLE [dbo].[SVC00640]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00640] ADD CONSTRAINT [CK__SVC00640__CREATE__528F1239] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00640] ADD CONSTRAINT [CK__SVC00640__CREATD__519AEE00] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00640] ADD CONSTRAINT [PKSVC00640] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00640] ON [dbo].[SVC00640] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00640].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00640].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00640].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00640].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00640].[CREATETIME]'
GO
GRANT SELECT ON  [dbo].[SVC00640] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00640] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00640] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00640] TO [DYNGRP]
GO
