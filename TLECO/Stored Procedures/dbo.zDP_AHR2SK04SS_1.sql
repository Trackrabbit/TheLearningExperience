SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2SK04SS_1] (@EMPID_I char(15), @SKILLSETNUMBER_I int) AS  set nocount on SELECT TOP 1  EMPID_I, SKILLSETNUMBER_I, PCTCERTIFIED_I, PCTCOMPLETED_I, NUMBERPOSSESSED_I, DEX_ROW_ID FROM .AHR2SK04 WHERE EMPID_I = @EMPID_I AND SKILLSETNUMBER_I = @SKILLSETNUMBER_I ORDER BY EMPID_I ASC, SKILLSETNUMBER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2SK04SS_1] TO [DYNGRP]
GO
