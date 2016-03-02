SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35256SI] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @QTYTYPE smallint, @SERLTQTY numeric(19,5), @SLTSQNUM int, @Replace_Item_Number char(31), @Replace_Serial_Number char(21), @Replace_Equipment_ID int, @BIN char(15), @Replace_Cost numeric(19,5), @MFGDATE datetime, @EXPNDATE datetime, @DATERECD datetime, @DTSEQNUM numeric(19,5), @CMPNTSEQ int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC35256 (Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, SLTSQNUM, Replace_Item_Number, Replace_Serial_Number, Replace_Equipment_ID, BIN, Replace_Cost, MFGDATE, EXPNDATE, DATERECD, DTSEQNUM, CMPNTSEQ) VALUES ( @Return_Record_Type, @RETDOCID, @LNSEQNBR, @QTYTYPE, @SERLTQTY, @SLTSQNUM, @Replace_Item_Number, @Replace_Serial_Number, @Replace_Equipment_ID, @BIN, @Replace_Cost, @MFGDATE, @EXPNDATE, @DATERECD, @DTSEQNUM, @CMPNTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35256SI] TO [DYNGRP]
GO
