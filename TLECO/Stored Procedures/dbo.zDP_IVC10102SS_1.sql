SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10102SS_1] (@DOCTYPE smallint, @INVCNMBR char(21), @LNITMSEQ int, @CMPNTSEQ int, @QTYTYPE smallint, @SLTSQNUM int) AS  set nocount on SELECT TOP 1  INVCNMBR, DOCTYPE, CMPNTSEQ, LNITMSEQ, QTYTYPE, SLTSQNUM, ITEMNMBR, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IVC10102 WHERE DOCTYPE = @DOCTYPE AND INVCNMBR = @INVCNMBR AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE = @QTYTYPE AND SLTSQNUM = @SLTSQNUM ORDER BY DOCTYPE ASC, INVCNMBR ASC, LNITMSEQ ASC, CMPNTSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10102SS_1] TO [DYNGRP]
GO