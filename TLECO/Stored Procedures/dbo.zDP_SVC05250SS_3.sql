SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05250SS_3] (@SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int, @CMPNTSEQ int, @SLTSQNUM int, @ITEMNMBR char(31), @SERLTNUM char(21)) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC05250 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND SLTSQNUM = @SLTSQNUM AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, SLTSQNUM ASC, ITEMNMBR ASC, SERLTNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05250SS_3] TO [DYNGRP]
GO
