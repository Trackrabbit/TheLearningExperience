SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10102SS_3] (@SERLTNUM char(21), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  INVCNMBR, DOCTYPE, CMPNTSEQ, LNITMSEQ, QTYTYPE, SLTSQNUM, ITEMNMBR, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IVC10102 WHERE SERLTNUM = @SERLTNUM AND ITEMNMBR = @ITEMNMBR ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10102SS_3] TO [DYNGRP]
GO
