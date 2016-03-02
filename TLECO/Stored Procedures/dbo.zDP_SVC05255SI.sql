SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05255SI] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @QTYTYPE smallint, @SERLTQTY numeric(19,5), @Return_Item_Number char(31), @Return_Serial_Number char(21), @Return_Equipment_ID int, @SLTSQNUM int, @BIN char(15), @RETCOST numeric(19,5), @SVC_Original_Serial tinyint, @DATERECD datetime, @DTSEQNUM numeric(19,5), @TRXSORCE char(13), @MARKED tinyint, @POSTED tinyint, @MFGDATE datetime, @EXPNDATE datetime, @CMPNTSEQ int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05255 (Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, Return_Item_Number, Return_Serial_Number, Return_Equipment_ID, SLTSQNUM, BIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, MARKED, POSTED, MFGDATE, EXPNDATE, CMPNTSEQ) VALUES ( @Return_Record_Type, @RETDOCID, @LNSEQNBR, @QTYTYPE, @SERLTQTY, @Return_Item_Number, @Return_Serial_Number, @Return_Equipment_ID, @SLTSQNUM, @BIN, @RETCOST, @SVC_Original_Serial, @DATERECD, @DTSEQNUM, @TRXSORCE, @MARKED, @POSTED, @MFGDATE, @EXPNDATE, @CMPNTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05255SI] TO [DYNGRP]
GO
