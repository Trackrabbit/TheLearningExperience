SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP001SS_1] (@APPINTTYPECODE_I smallint) AS  set nocount on SELECT TOP 1  APPINTTYPECODE_I, APPINTTYPESTR_I, TOTALWEIGHT_I, REVIEWRANGE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRAPP001 WHERE APPINTTYPECODE_I = @APPINTTYPECODE_I ORDER BY APPINTTYPECODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP001SS_1] TO [DYNGRP]
GO