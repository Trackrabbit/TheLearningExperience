SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2GR03SS_3] (@STRTDATE datetime, @EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, ENTRYNUMBER_I, DSCRIPTN, STRTDATE, ENDDATE, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .AHR2GR03 WHERE STRTDATE = @STRTDATE AND EMPID_I = @EMPID_I ORDER BY STRTDATE DESC, EMPID_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2GR03SS_3] TO [DYNGRP]
GO