SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY70200SS_1] (@RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5)) AS  set nocount on SELECT TOP 1  RTPACHIN, RPTGRIND, RTGRSBIN, RPTGRNMS, DEX_ROW_ID FROM .SY70200 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70200SS_1] TO [DYNGRP]
GO