SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRTERMDESS_1] (@TERMORDER_I smallint) AS  set nocount on SELECT TOP 1  TERMITEM_I, ADDTODEFAULTITEMS_I, TERMATTRIBUTE_I, DEFAULTNUMBER_I, TERMORDER_I, DEX_ROW_ID FROM .HRTERMDE WHERE TERMORDER_I = @TERMORDER_I ORDER BY TERMORDER_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTERMDESS_1] TO [DYNGRP]
GO