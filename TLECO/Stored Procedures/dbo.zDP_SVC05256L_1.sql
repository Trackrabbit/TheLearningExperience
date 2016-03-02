SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05256L_1] (@Return_Record_Type_RS smallint, @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @CMPNTSEQ_RS int, @QTYTYPE_RS smallint, @SLTSQNUM_RS int, @Return_Record_Type_RE smallint, @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5), @CMPNTSEQ_RE int, @QTYTYPE_RE smallint, @SLTSQNUM_RE int) AS  set nocount on IF @Return_Record_Type_RS IS NULL BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, SLTSQNUM, Replace_Item_Number, Replace_Serial_Number, Replace_Equipment_ID, BIN, Replace_Cost, MFGDATE, EXPNDATE, DATERECD, DTSEQNUM, CMPNTSEQ, DEX_ROW_ID FROM .SVC05256 ORDER BY Return_Record_Type DESC, RETDOCID DESC, LNSEQNBR DESC, CMPNTSEQ DESC, QTYTYPE DESC, SLTSQNUM DESC END ELSE IF @Return_Record_Type_RS = @Return_Record_Type_RE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, SLTSQNUM, Replace_Item_Number, Replace_Serial_Number, Replace_Equipment_ID, BIN, Replace_Cost, MFGDATE, EXPNDATE, DATERECD, DTSEQNUM, CMPNTSEQ, DEX_ROW_ID FROM .SVC05256 WHERE Return_Record_Type = @Return_Record_Type_RS AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY Return_Record_Type DESC, RETDOCID DESC, LNSEQNBR DESC, CMPNTSEQ DESC, QTYTYPE DESC, SLTSQNUM DESC END ELSE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, SLTSQNUM, Replace_Item_Number, Replace_Serial_Number, Replace_Equipment_ID, BIN, Replace_Cost, MFGDATE, EXPNDATE, DATERECD, DTSEQNUM, CMPNTSEQ, DEX_ROW_ID FROM .SVC05256 WHERE Return_Record_Type BETWEEN @Return_Record_Type_RS AND @Return_Record_Type_RE AND RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY Return_Record_Type DESC, RETDOCID DESC, LNSEQNBR DESC, CMPNTSEQ DESC, QTYTYPE DESC, SLTSQNUM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05256L_1] TO [DYNGRP]
GO
