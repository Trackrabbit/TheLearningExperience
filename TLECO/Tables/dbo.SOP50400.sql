CREATE TABLE [dbo].[SOP50400]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EPITMTYP] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[QTYFROM] [numeric] (19, 5) NOT NULL,
[QTYTO] [numeric] (19, 5) NOT NULL,
[PSITMVAL] [numeric] (19, 5) NOT NULL,
[EQUOMQTY] [numeric] (19, 5) NOT NULL,
[BASEUOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROMOLVL] [smallint] NOT NULL,
[PROMOTYP] [smallint] NOT NULL,
[PRCGRPID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODTCOD] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP50400] ADD CONSTRAINT [CK__SOP50400__ENDDAT__73E5190C] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP50400] ADD CONSTRAINT [CK__SOP50400__STRTDA__74D93D45] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP50400] ADD CONSTRAINT [PKSOP50400] PRIMARY KEY NONCLUSTERED  ([USERID], [ITEMNMBR], [UOFM], [PRCSHID], [EPITMTYP], [STRTDATE], [ENDDATE], [QTYFROM], [QTYTO]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[PRCSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[EPITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP50400].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP50400].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP50400].[QTYFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP50400].[QTYTO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP50400].[PSITMVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP50400].[EQUOMQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[BASEUOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50400].[PROMOLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50400].[PROMOTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[PRCGRPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50400].[PRODTCOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50400].[ACTIVE]'
GO
GRANT SELECT ON  [dbo].[SOP50400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP50400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP50400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP50400] TO [DYNGRP]
GO
