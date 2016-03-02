SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10002SS_3] (@SERLTNUM char(21), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  IVDOCNBR, IVDOCTYP, ITEMNMBR, SERLTNUM, SERLTQTY, LNSEQNBR, SLTSQNUM, DATERECD, DTSEQNUM, OVRSERLT, QTYSCRAPPED, FROMBIN, TOBIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV10002 WHERE SERLTNUM = @SERLTNUM AND ITEMNMBR = @ITEMNMBR ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10002SS_3] TO [DYNGRP]
GO