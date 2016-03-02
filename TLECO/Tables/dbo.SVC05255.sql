CREATE TABLE [dbo].[SVC05255]
(
[Return_Record_Type] [smallint] NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[SERLTQTY] [numeric] (19, 5) NOT NULL,
[Return_Item_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Serial_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Return_Equipment_ID] [int] NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETCOST] [numeric] (19, 5) NOT NULL,
[SVC_Original_Serial] [tinyint] NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MARKED] [tinyint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05255] ADD CONSTRAINT [CK__SVC05255__DATERE__7DCE75F9] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[SVC05255] ADD CONSTRAINT [CK__SVC05255__EXPNDA__7EC29A32] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC05255] ADD CONSTRAINT [CK__SVC05255__MFGDAT__7FB6BE6B] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC05255] ADD CONSTRAINT [PKSVC05255] PRIMARY KEY CLUSTERED  ([Return_Record_Type], [RETDOCID], [LNSEQNBR], [CMPNTSEQ], [QTYTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC05255] ON [dbo].[SVC05255] ([RETDOCID], [LNSEQNBR], [CMPNTSEQ], [SLTSQNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC05255] ON [dbo].[SVC05255] ([Return_Record_Type], [RETDOCID], [LNSEQNBR], [CMPNTSEQ], [MARKED], [POSTED], [SLTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[Return_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05255].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05255].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05255].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05255].[Return_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05255].[Return_Serial_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[Return_Equipment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05255].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05255].[RETCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[SVC_Original_Serial]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05255].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05255].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05255].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[MARKED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05255].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05255].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05255].[CMPNTSEQ]'
GO
GRANT SELECT ON  [dbo].[SVC05255] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05255] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05255] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05255] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SVC05255] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[SVC05255] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[SVC05255] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SVC05255] TO [rpt_sales manager]
GO
