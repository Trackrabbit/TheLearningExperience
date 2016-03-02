SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05251SS_3] (@SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @LNITMSEQ int, @ITEMNMBR char(31), @SERLTNUM char(21)) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC05251 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND EQPLINE = @EQPLINE AND LNITMSEQ = @LNITMSEQ AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LNITMSEQ ASC, ITEMNMBR ASC, SERLTNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05251SS_3] TO [DYNGRP]
GO
