SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40702SS_1] (@USERID char(15), @CURNCYID char(15), @ITEMNMBR char(31), @UOFM char(9), @QTYFROM numeric(19,5)) AS  set nocount on SELECT TOP 1  USERID, ITEMNMBR, UOFM, UMQTYINB, QTYFROM, QTYTO, UNITPRCE, CURNCYID, ERRVAL, DEX_ROW_ID FROM .SOP40702 WHERE USERID = @USERID AND CURNCYID = @CURNCYID AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM ORDER BY USERID ASC, CURNCYID ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40702SS_1] TO [DYNGRP]
GO
