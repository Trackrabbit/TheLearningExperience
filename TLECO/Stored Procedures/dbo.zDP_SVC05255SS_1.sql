SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05255SS_1] (@Return_Record_Type smallint, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @CMPNTSEQ int, @QTYTYPE smallint, @SLTSQNUM int) AS  set nocount on SELECT TOP 1  Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, Return_Item_Number, Return_Serial_Number, Return_Equipment_ID, SLTSQNUM, BIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, MARKED, POSTED, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC05255 WHERE Return_Record_Type = @Return_Record_Type AND RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE = @QTYTYPE AND SLTSQNUM = @SLTSQNUM ORDER BY Return_Record_Type ASC, RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05255SS_1] TO [DYNGRP]
GO
