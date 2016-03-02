CREATE TABLE [dbo].[SOP50401]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EPITMTYP] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[PRCSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BASEUOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[PRODTCOD] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYFROM] [numeric] (19, 5) NOT NULL,
[PSITMVAL] [numeric] (19, 5) NOT NULL,
[FREEITEM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FREEUOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP50401] ADD CONSTRAINT [CK__SOP50401__ENDDAT__77B5A9F0] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP50401] ADD CONSTRAINT [CK__SOP50401__STRTDA__78A9CE29] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP50401] ADD CONSTRAINT [PKSOP50401] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [EPITMTYP], [STRTDATE], [ENDDATE], [PRCSHID], [BASEUOFM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP50401] ON [dbo].[SOP50401] ([STRTDATE], [ENDDATE], [ITEMNMBR], [EPITMTYP], [PRCSHID], [BASEUOFM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50401].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50401].[EPITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP50401].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP50401].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50401].[PRCSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50401].[BASEUOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP50401].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50401].[PRODTCOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP50401].[QTYFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP50401].[PSITMVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50401].[FREEITEM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP50401].[FREEUOFM]'
GO
GRANT SELECT ON  [dbo].[SOP50401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP50401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP50401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP50401] TO [DYNGRP]
GO
