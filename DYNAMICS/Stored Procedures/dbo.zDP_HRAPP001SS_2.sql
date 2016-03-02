SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP001SS_2] (@APPINTTYPESTR_I char(21)) AS  set nocount on SELECT TOP 1  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 WHERE APPINTTYPESTR_I = @APPINTTYPESTR_I ORDER BY APPINTTYPESTR_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP001SS_2] TO [DYNGRP]
GO
