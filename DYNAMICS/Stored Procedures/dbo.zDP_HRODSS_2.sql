SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRODSS_2] (@DEFAULTNUMBER_I smallint, @TERMORDER_I smallint) AS  set nocount on SELECT TOP 1  DEFAULTNUMBER_I, TERMITEM_I, TERMATTRIBUTE_I, TERMORDER_I, ADDTODEFAULTITEMS_I, DEX_ROW_ID FROM .HROD WHERE DEFAULTNUMBER_I = @DEFAULTNUMBER_I AND TERMORDER_I = @TERMORDER_I ORDER BY DEFAULTNUMBER_I ASC, TERMORDER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRODSS_2] TO [DYNGRP]
GO
