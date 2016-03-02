SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05250SS_2] (@POSTED tinyint, @ITEMNMBR char(31), @SERLTNUM char(21)) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC05250 WHERE POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM ORDER BY POSTED ASC, ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05250SS_2] TO [DYNGRP]
GO
