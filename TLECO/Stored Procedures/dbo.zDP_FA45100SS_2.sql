SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA45100SS_2] (@RTGRSBIN numeric(19,5)) AS  set nocount on SELECT TOP 1  RTGRSBIN, RTPACHIN, RPTGRIND, RPTGRNMS, RTCFGWIN, DEX_ROW_ID FROM .FA45100 WHERE RTGRSBIN = @RTGRSBIN ORDER BY RTGRSBIN ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA45100SS_2] TO [DYNGRP]
GO