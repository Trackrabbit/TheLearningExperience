SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHRPR012SS_1] (@EMPID_I char(15), @ITEMNUM_I char(31)) AS  set nocount on SELECT TOP 1  EMPID_I, ITEMNUM_I, ISERIALNUMBER_I, DSCRIPTN, VALUE_I, CHECK1_I, DATEOUT_I, DATEIN_I, DATEDUE_I, CHANGEBY_I, CHANGEDATE_I, BOOLEANMONITOR_I, NOTESINDEX_I, DEX_ROW_ID FROM .AHRPR012 WHERE EMPID_I = @EMPID_I AND ITEMNUM_I = @ITEMNUM_I ORDER BY EMPID_I ASC, ITEMNUM_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHRPR012SS_1] TO [DYNGRP]
GO