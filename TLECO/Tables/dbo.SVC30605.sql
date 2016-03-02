CREATE TABLE [dbo].[SVC30605]
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
[SVC_Contract_Version] [smallint] NOT NULL,
[svcReverseFlag] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30605] ADD CONSTRAINT [CK__SVC30605__INVODA__47C76B03] CHECK ((datepart(hour,[INVODATE])=(0) AND datepart(minute,[INVODATE])=(0) AND datepart(second,[INVODATE])=(0) AND datepart(millisecond,[INVODATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30605] ADD CONSTRAINT [PKSVC30605] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version], [SOPNUMBE], [SOPTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30605].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30605].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30605].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30605].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30605].[INVODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30605].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30605].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30605].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30605].[Orig_Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30605].[SVC_Contract_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30605].[svcReverseFlag]'
GO
GRANT SELECT ON  [dbo].[SVC30605] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30605] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30605] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30605] TO [DYNGRP]
GO
