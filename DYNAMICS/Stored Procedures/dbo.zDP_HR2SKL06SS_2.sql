SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2SKL06SS_2] (@SKILLSETNUMBER_I int, @SEQORDER_I smallint) AS  set nocount on SELECT TOP 1  SKILLSETNUMBER_I, SKILLNUMBER_I, SEQORDER_I, STR20DUMMY_I, CHECK1_I, DEX_ROW_ID FROM .HR2SKL06 WHERE SKILLSETNUMBER_I = @SKILLSETNUMBER_I AND SEQORDER_I = @SEQORDER_I ORDER BY SKILLSETNUMBER_I ASC, SEQORDER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2SKL06SS_2] TO [DYNGRP]
GO