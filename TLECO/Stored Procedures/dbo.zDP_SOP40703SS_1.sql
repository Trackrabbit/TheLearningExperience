SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40703SS_1] (@USERID char(15), @CUSTNMBR char(15), @ITEMNMBR char(31), @UOFM char(9), @QTYFROM numeric(19,5)) AS  set nocount on SELECT TOP 1  USERID, CUSTNMBR, ITEMNMBR, UOFM, QTYFROM, QTYTO, UNITPRCE, DEX_ROW_ID FROM .SOP40703 WHERE USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM ORDER BY USERID ASC, CUSTNMBR ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40703SS_1] TO [DYNGRP]
GO