CREATE TABLE [dbo].[SVC00220]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CREATETIME] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00220] ADD CONSTRAINT [CK__SVC00220__CREATE__69DC8BE5] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00220] ADD CONSTRAINT [CK__SVC00220__CREATD__68E867AC] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC00220] ADD CONSTRAINT [PKSVC00220] PRIMARY KEY CLUSTERED  ([CALLNBR], [SRVRECTYPE], [SOPTYPE], [SOPNUMBE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00220].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00220].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00220].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00220].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00220].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00220].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00220].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00220].[CREATETIME]'
GO
GRANT SELECT ON  [dbo].[SVC00220] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00220] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00220] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00220] TO [DYNGRP]
GO
