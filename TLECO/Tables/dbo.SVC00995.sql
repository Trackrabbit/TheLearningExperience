CREATE TABLE [dbo].[SVC00995]
(
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[ESCSTATUS] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXQTY] [numeric] (19, 5) NOT NULL,
[WAITTME] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00995] ADD CONSTRAINT [CK__SVC00995__ENTTME__2DB29345] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00995] ADD CONSTRAINT [CK__SVC00995__ENTDTE__2CBE6F0C] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00995] ADD CONSTRAINT [PKSVC00995] PRIMARY KEY CLUSTERED  ([OFFID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00995].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00995].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00995].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00995].[ESCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00995].[TRXQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00995].[WAITTME]'
GO
GRANT SELECT ON  [dbo].[SVC00995] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00995] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00995] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00995] TO [DYNGRP]
GO
