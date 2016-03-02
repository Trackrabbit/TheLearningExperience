SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05255N_3] (@BS int, @RETDOCID char(15), @LNSEQNBR numeric(19,5), @CMPNTSEQ int, @SLTSQNUM int, @RETDOCID_RS char(15), @LNSEQNBR_RS numeric(19,5), @CMPNTSEQ_RS int, @SLTSQNUM_RS int, @RETDOCID_RE char(15), @LNSEQNBR_RE numeric(19,5), @CMPNTSEQ_RE int, @SLTSQNUM_RE int) AS  set nocount on IF @RETDOCID_RS IS NULL BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, Return_Item_Number, Return_Serial_Number, Return_Equipment_ID, SLTSQNUM, BIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, MARKED, POSTED, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC05255 WHERE ( RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ AND SLTSQNUM > @SLTSQNUM OR RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ > @CMPNTSEQ OR RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR RETDOCID > @RETDOCID ) ORDER BY RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, SLTSQNUM ASC END ELSE IF @RETDOCID_RS = @RETDOCID_RE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, Return_Item_Number, Return_Serial_Number, Return_Equipment_ID, SLTSQNUM, BIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, MARKED, POSTED, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC05255 WHERE RETDOCID = @RETDOCID_RS AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ AND SLTSQNUM > @SLTSQNUM OR RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ > @CMPNTSEQ OR RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR RETDOCID > @RETDOCID ) ORDER BY RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, SLTSQNUM ASC END ELSE BEGIN SELECT TOP 25  Return_Record_Type, RETDOCID, LNSEQNBR, QTYTYPE, SERLTQTY, Return_Item_Number, Return_Serial_Number, Return_Equipment_ID, SLTSQNUM, BIN, RETCOST, SVC_Original_Serial, DATERECD, DTSEQNUM, TRXSORCE, MARKED, POSTED, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC05255 WHERE RETDOCID BETWEEN @RETDOCID_RS AND @RETDOCID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ = @CMPNTSEQ AND SLTSQNUM > @SLTSQNUM OR RETDOCID = @RETDOCID AND LNSEQNBR = @LNSEQNBR AND CMPNTSEQ > @CMPNTSEQ OR RETDOCID = @RETDOCID AND LNSEQNBR > @LNSEQNBR OR RETDOCID > @RETDOCID ) ORDER BY RETDOCID ASC, LNSEQNBR ASC, CMPNTSEQ ASC, SLTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05255N_3] TO [DYNGRP]
GO
