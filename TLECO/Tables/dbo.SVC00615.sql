CREATE TABLE [dbo].[SVC00615]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcConsolidateContractIn] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00615] ADD CONSTRAINT [CK__SVC00615__ENDDAT__3D93F553] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00615] ADD CONSTRAINT [CK__SVC00615__LSTBLD__3E88198C] CHECK ((datepart(hour,[LSTBLDTE])=(0) AND datepart(minute,[LSTBLDTE])=(0) AND datepart(second,[LSTBLDTE])=(0) AND datepart(millisecond,[LSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00615] ADD CONSTRAINT [CK__SVC00615__NXTBLD__3F7C3DC5] CHECK ((datepart(hour,[NXTBLDTE])=(0) AND datepart(minute,[NXTBLDTE])=(0) AND datepart(second,[NXTBLDTE])=(0) AND datepart(millisecond,[NXTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00615] ADD CONSTRAINT [CK__SVC00615__STRTDA__407061FE] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00615] ADD CONSTRAINT [PKSVC00615] PRIMARY KEY CLUSTERED  ([USERID], [CONSTS], [MKDTOPST], [CONTNBR], [Bill_To_Customer], [SVC_Bill_To_Address_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00615] ON [dbo].[SVC00615] ([USERID], [CONSTS], [CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00615] ON [dbo].[SVC00615] ([USERID], [MKDTOPST], [CONSTS], [Bill_To_Customer], [SVC_Bill_To_Address_Code], [CONTNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00615].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00615].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00615].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00615].[LSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00615].[NXTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00615].[TOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00615].[Last_Amount_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00615].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00615].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00615].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00615].[ORIGTOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00615].[ORIGLASTAmountBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00615].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00615].[ERMSGNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[ERMSGTX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00615].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00615].[svcConsolidateContractIn]'
GO
GRANT SELECT ON  [dbo].[SVC00615] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00615] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00615] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00615] TO [DYNGRP]
GO
