CREATE TABLE [dbo].[SVC00605]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[INVODATE] [datetime] NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[Orig_Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Orig_Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[svcReverseFlag] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00605] ADD CONSTRAINT [CK__SVC00605__INVODA__0B087586] CHECK ((datepart(hour,[INVODATE])=(0) AND datepart(minute,[INVODATE])=(0) AND datepart(second,[INVODATE])=(0) AND datepart(millisecond,[INVODATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00605] ADD CONSTRAINT [PKSVC00605] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SOPNUMBE], [SOPTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00605].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00605].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00605].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00605].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00605].[INVODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00605].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00605].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00605].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00605].[Orig_Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00605].[svcReverseFlag]'
GO
GRANT SELECT ON  [dbo].[SVC00605] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00605] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00605] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00605] TO [DYNGRP]
GO
