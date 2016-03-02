SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35602SI] (@RTV_Number char(15), @RTV_Line numeric(19,5), @QTYTYPE smallint, @SERLTQTY numeric(19,5), @SLTSQNUM int, @ITEMNMBR char(31), @SERLNMBR char(21), @SVC_Serial_ID char(21), @EQUIPID int, @Return_Item_Number char(31), @Return_Serial_Number char(21), @SVC_Return_Serial_ID char(21), @Return_Equipment_ID int, @BIN char(15), @TOBIN char(15), @RETCOST numeric(19,5), @SVC_Original_Serial tinyint, @DATERECD datetime, @DTSEQNUM numeric(19,5), @TRXSORCE char(13), @Shipped tinyint, @MARKED tinyint, @POSTED tinyint, @MFGDATE datetime, @EXPNDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC35602 (RTV_Number, RTV_Line, QTYTYPE, SERLTQTY, SLTSQNUM, ITEMNMBR, SERLNMBR, SVC_Serial_ID, EQUIPID, Return_Item_Number, Return_Serial_Number, SVC_Return_Serial_ID, Return_Equipment_ID, BIN, TOBIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, Shipped, MARKED, POSTED, MFGDATE, EXPNDATE) VALUES ( @RTV_Number, @RTV_Line, @QTYTYPE, @SERLTQTY, @SLTSQNUM, @ITEMNMBR, @SERLNMBR, @SVC_Serial_ID, @EQUIPID, @Return_Item_Number, @Return_Serial_Number, @SVC_Return_Serial_ID, @Return_Equipment_ID, @BIN, @TOBIN, @RETCOST, @SVC_Original_Serial, @DATERECD, @DTSEQNUM, @TRXSORCE, @Shipped, @MARKED, @POSTED, @MFGDATE, @EXPNDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35602SI] TO [DYNGRP]
GO
