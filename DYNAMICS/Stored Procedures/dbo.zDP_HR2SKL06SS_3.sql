SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2SKL06SS_3] (@SKILLNUMBER_I smallint, @SKILLSETNUMBER_I int) AS  set nocount on SELECT TOP 1  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 WHERE SKILLNUMBER_I = @SKILLNUMBER_I AND SKILLSETNUMBER_I = @SKILLSETNUMBER_I ORDER BY SKILLNUMBER_I ASC, SKILLSETNUMBER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SKL06SS_3] TO [DYNGRP]
GO
