CREATE TABLE [dbo].[SVC05256]
(
[Return_Record_Type] [smallint] NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[SERLTQTY] [numeric] (19, 5) NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[Replace_Item_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_Serial_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_Equipment_ID] [int] NOT NULL,
[BIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replace_Cost] [numeric] (19, 5) NOT NULL,
[MFGDATE] [datetime] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DATERECD] [datetime] NOT NULL,
[DTSEQNUM] [numeric] (19, 5) NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05256] ADD CONSTRAINT [CK__SVC05256__DATERE__02932B16] CHECK ((datepart(hour,[DATERECD])=(0) AND datepart(minute,[DATERECD])=(0) AND datepart(second,[DATERECD])=(0) AND datepart(millisecond,[DATERECD])=(0)))
GO
ALTER TABLE [dbo].[SVC05256] ADD CONSTRAINT [CK__SVC05256__EXPNDA__03874F4F] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC05256] ADD CONSTRAINT [CK__SVC05256__MFGDAT__047B7388] CHECK ((datepart(hour,[MFGDATE])=(0) AND datepart(minute,[MFGDATE])=(0) AND datepart(second,[MFGDATE])=(0) AND datepart(millisecond,[MFGDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC05256] ADD CONSTRAINT [PKSVC05256] PRIMARY KEY CLUSTERED  ([Return_Record_Type], [RETDOCID], [LNSEQNBR], [CMPNTSEQ], [QTYTYPE], [SLTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05256].[Return_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05256].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05256].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05256].[QTYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05256].[SERLTQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05256].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05256].[Replace_Item_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05256].[Replace_Serial_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05256].[Replace_Equipment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05256].[BIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05256].[Replace_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05256].[MFGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05256].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC05256].[DATERECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05256].[DTSEQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05256].[CMPNTSEQ]'
GO
GRANT SELECT ON  [dbo].[SVC05256] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05256] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05256] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05256] TO [DYNGRP]
GO
