SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPRO012SS_2] (@ITEMNUM_I char(31)) AS  set nocount on SELECT TOP 1  EMPID_I, ITEMNUM_I, ISERIALNUMBER_I, DSCRIPTN, VALUE_I, CHECK1_I, DATEOUT_I, DATEIN_I, DATEDUE_I, CHANGEBY_I, CHANGEDATE_I, BOOLEANMONITOR_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRPRO012 WHERE ITEMNUM_I = @ITEMNUM_I ORDER BY ITEMNUM_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPRO012SS_2] TO [DYNGRP]
GO
