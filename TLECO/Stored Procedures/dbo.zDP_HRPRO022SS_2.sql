SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPRO022SS_2] (@ISERIALNUMBER_I char(15)) AS  set nocount on SELECT TOP 1  ITEMNUM_I, ISERIALNUMBER_I, DSCRIPTN, VALUE_I, CHECK1_I, EMPID_I, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .HRPRO022 WHERE ISERIALNUMBER_I = @ISERIALNUMBER_I ORDER BY ISERIALNUMBER_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPRO022SS_2] TO [DYNGRP]
GO
