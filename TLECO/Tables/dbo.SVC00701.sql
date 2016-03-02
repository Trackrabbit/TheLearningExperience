CREATE TABLE [dbo].[SVC00701]
(
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[STATUS] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNSFQTY] [numeric] (19, 5) NOT NULL,
[QTYFULFI] [numeric] (19, 5) NOT NULL,
[QTYSHPPD] [numeric] (19, 5) NOT NULL,
[QTY_To_Receive] [numeric] (19, 5) NOT NULL,
[QTYRECVD] [numeric] (19, 5) NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[SERVLITEMSEQ] [int] NOT NULL,
[EQPLINE] [int] NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[RTV_Number] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYBSUOM] [numeric] (19, 5) NOT NULL,
[TRNSFLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITLOCN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNSTLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRFQTYTY] [smallint] NOT NULL,
[TRTQTYTY] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[Landed_Cost_Group_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Reason_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00701_I] ON [dbo].[SVC00701]  FOR INSERT  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @UOM char(9),@QtyInBase numeric(19,5) declare @DECPLQTY smallint  declare iLine cursor for   select ITEMNMBR,TRNSFLOC,TRNSFQTY,UOFM from inserted   open iLine  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 set ATYALLOC = ATYALLOC + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber and LOCNCODE = @LocationCode and RCRDTYPE = 2   update IV00102 set ATYALLOC = ATYALLOC + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber and RCRDTYPE = 1    fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close iLine  deallocate iLine    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00701_U] ON [dbo].[SVC00701]  FOR UPDATE  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @QtyShipped numeric(19,5) declare @UOM char(9),@QtyInBase numeric(19,5) declare @TransferStatus smallint declare @DECPLQTY smallint declare iLine cursor for   select ITEMNMBR,TRNSFLOC,TRNSFQTY,UOFM ,QTYSHPPD,STATUS  from inserted  declare dLine cursor for   select ITEMNMBR,TRNSFLOC,TRNSFQTY,UOFM ,QTYSHPPD,STATUS from deleted  open iLine  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM ,@QtyShipped,@TransferStatus while @@FETCH_STATUS = 0   BEGIN   IF not(@TransferStatus = 4 and UPDATE(ITEMNMBR))  BEGIN  exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 set ATYALLOC = ATYALLOC + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber and LOCNCODE = @LocationCode and RCRDTYPE = 2   update IV00102 set ATYALLOC = ATYALLOC + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber and RCRDTYPE = 1   END  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM,@QtyShipped,@TransferStatus  END  close iLine  deallocate iLine  open dLine  fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM,@QtyShipped,@TransferStatus while @@FETCH_STATUS = 0   BEGIN   IF not(@TransferStatus = 4 and UPDATE(ITEMNMBR))  BEGIN  exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  update IV00102 set ATYALLOC = ATYALLOC - round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber and LOCNCODE = @LocationCode and RCRDTYPE = 2   update IV00102 set ATYALLOC = ATYALLOC - round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber and RCRDTYPE = 1   END  fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM,@QtyShipped,@TransferStatus  END  close dLine  deallocate dLine    
GO
ALTER TABLE [dbo].[SVC00701] ADD CONSTRAINT [PKSVC00701] PRIMARY KEY CLUSTERED  ([ORDDOCID], [LNITMSEQ], [STATUS]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00701] ON [dbo].[SVC00701] ([ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC00701] ON [dbo].[SVC00701] ([ITEMNMBR], [ITLOCN], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00701] ON [dbo].[SVC00701] ([ITEMNMBR], [TRNSFLOC], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00701] ON [dbo].[SVC00701] ([ORDDOCID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00701] ON [dbo].[SVC00701] ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LINITMTYP], [SERVLITEMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00701] ON [dbo].[SVC00701] ([TRNSFLOC], [ITEMNMBR], [STATUS], [ORDDOCID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[STATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00701].[TRNSFQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00701].[QTYFULFI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00701].[QTYSHPPD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00701].[QTY_To_Receive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00701].[QTYRECVD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[SERVLITEMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00701].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[RTV_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00701].[QTYBSUOM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[TRNSFLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[ITLOCN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[TRNSTLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[TRFQTYTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[TRTQTYTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00701].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[Landed_Cost_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00701].[Reason_Code]'
GO
GRANT SELECT ON  [dbo].[SVC00701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00701] TO [DYNGRP]
GO
