CREATE TABLE [dbo].[SVC06101]
(
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LINITMTYP] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMUSETYPE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QTYORDER] [numeric] (19, 5) NOT NULL,
[ATYALLOC] [numeric] (19, 5) NOT NULL,
[QTYBACKO] [numeric] (19, 5) NOT NULL,
[QTYSOLD] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[TRANSTME] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BILLABLTIM] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[ORDDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSLINESEQ] [int] NOT NULL,
[PONMBRSTR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POLNSEQ] [numeric] (19, 5) NOT NULL,
[FUFILDAT] [datetime] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[CMPITQTY] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSVC06101D] ON [dbo].[SVC06101] FOR DELETE  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @UOM char(9),@QtyInBase numeric(19,5) declare @DECPLQTY smallint declare dLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from deleted where LINITMTYP = 'P' and QTYBACKO > 0 open dLine  fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD - round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )   fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close dLine  deallocate dLine    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSVC06101I] ON [dbo].[SVC06101] FOR INSERT  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @UOM char(9),@QtyInBase numeric(19,5) declare @DECPLQTY smallint  declare iLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from inserted where LINITMTYP = 'P' and QTYBACKO > 0  open iLine  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close iLine  deallocate iLine   
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[trSVC06101U] ON [dbo].[SVC06101] FOR UPDATE  AS  declare @ItemNumber char(31)  declare @LocationCode char(11)  declare @QTY numeric(19,5)  declare @UOM char(9),@QtyInBase numeric(19,5) declare @DECPLQTY smallint  declare iLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from inserted where LINITMTYP = 'P' and QTYBACKO > 0 declare dLine cursor for   select ITEMNMBR,LOCNCODE,QTYBACKO,UOFM from deleted where LINITMTYP = 'P' and QTYBACKO > 0 open iLine  fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM  while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD + round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )   fetch next from iLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close iLine  deallocate iLine  open dLine  fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM while @@FETCH_STATUS = 0   BEGIN   exec SVC_Get_QtyInBase @ItemNumber,@UOM,1,@QtyInBase OUTPUT  select @DECPLQTY = isnull(DECPLQTY,1) from IV00101 where ITEMNMBR = @ItemNumber  update IV00102 with (rowlock) set QTYBKORD = QTYBKORD - round(@QTY * @QtyInBase, @DECPLQTY-1)  where ITEMNMBR = @ItemNumber AND (RCRDTYPE = 1 OR (LOCNCODE = @LocationCode AND RCRDTYPE = 2) )   fetch next from dLine into @ItemNumber,@LocationCode,@QTY,@UOM  END  close dLine  deallocate dLine    
GO
ALTER TABLE [dbo].[SVC06101] ADD CONSTRAINT [CK__SVC06101__ENDTIM__6C6EDFCD] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06101] ADD CONSTRAINT [CK__SVC06101__STRTTI__6F4B4C78] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06101] ADD CONSTRAINT [CK__SVC06101__ENDDAT__6B7ABB94] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06101] ADD CONSTRAINT [CK__SVC06101__FUFILD__6D630406] CHECK ((datepart(hour,[FUFILDAT])=(0) AND datepart(minute,[FUFILDAT])=(0) AND datepart(second,[FUFILDAT])=(0) AND datepart(millisecond,[FUFILDAT])=(0)))
GO
ALTER TABLE [dbo].[SVC06101] ADD CONSTRAINT [CK__SVC06101__STRTDA__6E57283F] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC06101] ADD CONSTRAINT [PKSVC06101] PRIMARY KEY CLUSTERED  ([WORECTYPE], [WORKORDNUM], [LINITMTYP], [CMPNTSEQ], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC06101] ON [dbo].[SVC06101] ([PONMBRSTR], [POLNSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC06101] ON [dbo].[SVC06101] ([WORECTYPE], [LINITMTYP], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC06101] ON [dbo].[SVC06101] ([WORECTYPE], [LINITMTYP], [ITEMNMBR], [LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC06101] ON [dbo].[SVC06101] ([WORECTYPE], [WORKORDNUM], [LINITMTYP], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06101] ON [dbo].[SVC06101] ([WORECTYPE], [WORKORDNUM], [SEQUENCE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC06101] ON [dbo].[SVC06101] ([WORECTYPE], [WORKORDNUM], [STATIONID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06101].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[WOSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[LINITMTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06101].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[ITEMUSETYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[QTYORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[ATYALLOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[QTYBACKO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[QTYSOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[UNITPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06101].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06101].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06101].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06101].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[TRANSTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[BILLABLTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[ORDDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06101].[TRANSLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06101].[PONMBRSTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[POLNSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06101].[FUFILDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06101].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06101].[CMPITQTY]'
GO
GRANT SELECT ON  [dbo].[SVC06101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06101] TO [DYNGRP]
GO
