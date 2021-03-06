SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpItmCusSS_2] (@CUSTNMBR char(15), @ITEMNMBR char(31), @UOFM char(9)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  CUSTNMBR, ITEMNMBR, ITEMDESC, DOCDATE, QTYTOINV, UOFM, UNITPRCE, SOPNUMBE, SOPTYPE, LNITMSEQ, DECPLQTY, DECPLCUR, DEX_ROW_ID FROM .gpItmCus WHERE CUSTNMBR = @CUSTNMBR AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM ORDER BY CUSTNMBR ASC, ITEMNMBR DESC, UOFM ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpItmCusSS_2] TO [DYNGRP]
GO
