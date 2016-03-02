CREATE TABLE [dbo].[SVC00203]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EQPLINE] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMUSETYPE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYORDER] [numeric] (19, 5) NOT NULL,
[ATYALLOC] [numeric] (19, 5) NOT NULL,
[QTYBACKO] [numeric] (19, 5) NOT NULL,
[QTYSOLD] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDTME] [datetime] NOT NULL,
[TRANSTME] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BILLABLTIM] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNSFLOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRNSFQTY] [numeric] (19, 5) NOT NULL,
[TRNFLAG] [tinyint] NOT NULL,
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSLINESEQ] [int] NOT NULL,
[LABPCT] [numeric] (19, 5) NOT NULL,
[PARTPCT] [numeric] (19, 5) NOT NULL,
[MISCPCT] [numeric] (19, 5) NOT NULL,
[FUFILDAT] [datetime] NOT NULL,
[PONMBRSTR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POLNSEQ] [numeric] (19, 5) NOT NULL,
[On_Return] [tinyint] NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[Miles_Start] [int] NOT NULL,
[Miles_End] [int] NOT NULL,
[Miles_Used] [int] NOT NULL,
[PRICELVL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Address_Option] [smallint] NOT NULL,
[SVC_Misc_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Disable_XFR_Grouping] [tinyint] NOT NULL,
[Work_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[ORUNTPRC] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[OXTNDPRC] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[SVC_FO_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcCreateVoucher] [tinyint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[CMPITQTY] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSVC00203D] ON [dbo].[SVC00203] FOR DELETE  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @UOM char(9),@QtyInBase numeric(19,5) declare @DECPLQTY smallint declare dLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from deleted where LINITMTYP = 'P' and (ITEMUSETYPE <> 'R' and ITEMUSETYPE <> 'K') and QTYBACKO > 0 open dLine  fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD - round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )   fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close dLine  deallocate dLine    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSVC00203I] ON [dbo].[SVC00203] FOR INSERT  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @UOM char(9),@QtyInBase numeric(19,5) declare @DECPLQTY smallint  declare iLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from inserted where LINITMTYP = 'P' and (ITEMUSETYPE <> 'R' and ITEMUSETYPE <> 'K') and QTYBACKO > 0  open iLine  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close iLine  deallocate iLine   
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSVC00203U] ON [dbo].[SVC00203] FOR UPDATE  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @UOM char(9),@QtyInBase numeric(19,5) declare @DECPLQTY smallint  declare iLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from inserted where LINITMTYP = 'P' and (ITEMUSETYPE <> 'R' and ITEMUSETYPE <> 'K') and QTYBACKO > 0 declare dLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from deleted where LINITMTYP = 'P' and (ITEMUSETYPE <> 'R' and ITEMUSETYPE <> 'K') and QTYBACKO > 0 open iLine  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM  while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )   fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close iLine  deallocate iLine  open dLine  fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD - round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )   fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close dLine  deallocate dLine    
GO
ALTER TABLE [dbo].[SVC00203] ADD CONSTRAINT [CK__SVC00203__ENDTME__4E347170] CHECK ((datepart(day,[ENDTME])=(1) AND datepart(month,[ENDTME])=(1) AND datepart(year,[ENDTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00203] ADD CONSTRAINT [CK__SVC00203__STRTTI__5110DE1B] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00203] ADD CONSTRAINT [CK__SVC00203__ENDDAT__4D404D37] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00203] ADD CONSTRAINT [CK__SVC00203__FUFILD__4F2895A9] CHECK ((datepart(hour,[FUFILDAT])=(0) AND datepart(minute,[FUFILDAT])=(0) AND datepart(second,[FUFILDAT])=(0) AND datepart(millisecond,[FUFILDAT])=(0)))
GO
ALTER TABLE [dbo].[SVC00203] ADD CONSTRAINT [CK__SVC00203__STRTDA__501CB9E2] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00203] ADD CONSTRAINT [PKSVC00203] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LINITMTYP], [CMPNTSEQ], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00203] ON [dbo].[SVC00203] ([PONMBRSTR], [POLNSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9SVC00203] ON [dbo].[SVC00203] ([SRVRECTYPE], [CALLNBR], [EQPLINE], [LINITMTYP], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10SVC00203] ON [dbo].[SVC00203] ([SRVRECTYPE], [CALLNBR], [TECHID], [EQPLINE], [LINITMTYP], [CMPNTSEQ], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC00203] ON [dbo].[SVC00203] ([SRVRECTYPE], [LINITMTYP], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8SVC00203] ON [dbo].[SVC00203] ([SRVRECTYPE], [LINITMTYP], [ITEMNMBR], [LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00203] ON [dbo].[SVC00203] ([SRVRECTYPE], [SRVSTAT], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00203] ON [dbo].[SVC00203] ([SRVRECTYPE], [SRVSTAT], [LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00203] ON [dbo].[SVC00203] ([SRVRECTYPE], [SRVSTAT], [TECHID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00203] ON [dbo].[SVC00203] ([TECHID], [SRVRECTYPE], [STRTDATE], [STRTTIME], [ENDDATE], [ENDTME], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[EQPLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[SRVSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[ITEMUSETYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[QTYORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[QTYBACKO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[QTYSOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00203].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00203].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00203].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00203].[ENDTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[TRANSTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[BILLABLTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[TRNSFLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[TRNSFQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[TRNFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[TRANSLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[MISCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00203].[FUFILDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[PONMBRSTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[POLNSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[On_Return]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[Miles_Start]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[Miles_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[Miles_Used]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[PRICELVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[SVC_Address_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[SVC_Misc_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[SVC_Disable_XFR_Grouping]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[Work_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[ORUNTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[SVC_FO_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[svcCreateVoucher]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00203].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00203].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00203].[CMPITQTY]'
GO
GRANT SELECT ON  [dbo].[SVC00203] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00203] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00203] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00203] TO [DYNGRP]
GO
