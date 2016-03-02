CREATE TABLE [dbo].[SVC30220]
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
ALTER TABLE [dbo].[SVC30220] ADD CONSTRAINT [CK__SVC30220__CREATE__695D68F8] CHECK ((datepart(day,[CREATETIME])=(1) AND datepart(month,[CREATETIME])=(1) AND datepart(year,[CREATETIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30220] ADD CONSTRAINT [CK__SVC30220__CREATD__686944BF] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SVC30220] ADD CONSTRAINT [PKSVC30220] PRIMARY KEY CLUSTERED  ([CALLNBR], [SRVRECTYPE], [SOPTYPE], [SOPNUMBE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30220].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30220].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30220].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30220].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30220].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30220].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30220].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30220].[CREATETIME]'
GO
GRANT SELECT ON  [dbo].[SVC30220] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30220] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30220] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30220] TO [DYNGRP]
GO
