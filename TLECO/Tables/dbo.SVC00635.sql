CREATE TABLE [dbo].[SVC00635]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[LSTBLDTE] [datetime] NOT NULL,
[NXTBLDTE] [datetime] NOT NULL,
[TOTBIL] [numeric] (19, 5) NOT NULL,
[Last_Amount_Billed] [numeric] (19, 5) NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[ORIGTOTBIL] [numeric] (19, 5) NOT NULL,
[ORIGLASTAmountBilled] [numeric] (19, 5) NOT NULL,
[Orig_Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[ERMSGNBR] [smallint] NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTX2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00635] ADD CONSTRAINT [CK__SVC00635__ENDDAT__4BE214AA] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00635] ADD CONSTRAINT [CK__SVC00635__LSTBLD__4CD638E3] CHECK ((datepart(hour,[LSTBLDTE])=(0) AND datepart(minute,[LSTBLDTE])=(0) AND datepart(second,[LSTBLDTE])=(0) AND datepart(millisecond,[LSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00635] ADD CONSTRAINT [CK__SVC00635__NXTBLD__4DCA5D1C] CHECK ((datepart(hour,[NXTBLDTE])=(0) AND datepart(minute,[NXTBLDTE])=(0) AND datepart(second,[NXTBLDTE])=(0) AND datepart(millisecond,[NXTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00635] ADD CONSTRAINT [CK__SVC00635__STRTDA__4EBE8155] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00635] ADD CONSTRAINT [PKSVC00635] PRIMARY KEY NONCLUSTERED  ([USERID], [CONSTS], [CONTNBR], [SOPNUMBE], [SOPTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00635] ON [dbo].[SVC00635] ([USERID], [CONSTS], [CONTNBR], [SOPNUMBE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00635] ON [dbo].[SVC00635] ([USERID], [MKDTOPST], [CONSTS], [CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00635].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00635].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00635].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00635].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00635].[LSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00635].[NXTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00635].[TOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00635].[Last_Amount_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00635].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00635].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00635].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00635].[ORIGTOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00635].[ORIGLASTAmountBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00635].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00635].[ERMSGNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00635].[ERMSGTX2]'
GO
GRANT SELECT ON  [dbo].[SVC00635] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00635] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00635] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00635] TO [DYNGRP]
GO
