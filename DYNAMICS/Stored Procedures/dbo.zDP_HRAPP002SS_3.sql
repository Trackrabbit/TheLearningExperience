SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP002SS_3] (@APPINTCATCODE_I smallint) AS  set nocount on SELECT TOP 1  APPINTTYPECODE_I, APPINTCATCODE_I, CATEGORY_I, WEIGHTFACTOR_I, SEQORDER_I, DEX_ROW_ID FROM .HRAPP002 WHERE APPINTCATCODE_I = @APPINTCATCODE_I ORDER BY APPINTCATCODE_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP002SS_3] TO [DYNGRP]
GO
