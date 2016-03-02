CREATE TABLE [dbo].[SOP60100]
(
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[RCTINVCERRORS] [binary] (4) NOT NULL,
[RCPTCOST] [numeric] (19, 5) NOT NULL,
[RCPTPRIORITY] [smallint] NOT NULL,
[QTYONPO] [numeric] (19, 5) NOT NULL,
[QTYONPOBASE] [numeric] (19, 5) NOT NULL,
[QTYRECVD] [numeric] (19, 5) NOT NULL,
[QTYRECINBASE] [numeric] (19, 5) NOT NULL,
[RQSTFFDATE] [datetime] NOT NULL,
[QTYBSUOM] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP60100] ADD CONSTRAINT [CK__SOP60100__DOCDAT__2AC149CB] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP60100] ADD CONSTRAINT [CK__SOP60100__RQSTFF__29CD2592] CHECK ((datepart(hour,[RQSTFFDATE])=(0) AND datepart(minute,[RQSTFFDATE])=(0) AND datepart(second,[RQSTFFDATE])=(0) AND datepart(millisecond,[RQSTFFDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP60100] ADD CONSTRAINT [PKSOP60100] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [SOPNUMBE], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP60100] ON [dbo].[SOP60100] ([PONUMBER], [ORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP60100] ON [dbo].[SOP60100] ([PONUMBER], [ORD], [RCPTPRIORITY], [RQSTFFDATE], [QTYONPOBASE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP60100].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP60100].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP60100].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP60100].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP60100].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP60100].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP60100].[RCTINVCERRORS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP60100].[RCPTCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP60100].[RCPTPRIORITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP60100].[QTYONPO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP60100].[QTYONPOBASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP60100].[QTYRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP60100].[QTYRECINBASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP60100].[RQSTFFDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP60100].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP60100].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP60100].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP60100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP60100].[UOFM]'
GO
GRANT SELECT ON  [dbo].[SOP60100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP60100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP60100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP60100] TO [DYNGRP]
GO
