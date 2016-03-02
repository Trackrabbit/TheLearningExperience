SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRREV032SS_2] (@REVIEWSETUPCODE_I char(31), @REVINTSEQUENCE_I smallint) AS  set nocount on SELECT TOP 1  REVIEWSETUPCODE_I, REVINTLTITLES_I, REVINTSEQUENCE_I, DEX_ROW_ID FROM .HRREV032 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVINTSEQUENCE_I = @REVINTSEQUENCE_I ORDER BY REVIEWSETUPCODE_I ASC, REVINTSEQUENCE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREV032SS_2] TO [DYNGRP]
GO