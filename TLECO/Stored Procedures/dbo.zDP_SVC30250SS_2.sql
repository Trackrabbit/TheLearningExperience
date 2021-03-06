SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30250SS_2] (@POSTED tinyint, @ITEMNMBR char(31), @SERLTNUM char(21)) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC30250 WHERE POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM ORDER BY POSTED ASC, ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30250SS_2] TO [DYNGRP]
GO
