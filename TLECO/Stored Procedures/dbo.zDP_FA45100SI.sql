SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA45100SI] (@RTGRSBIN numeric(19,5), @RTPACHIN smallint, @RPTGRIND smallint, @RPTGRNMS char(21), @RTCFGWIN smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA45100 (RTGRSBIN, RTPACHIN, RPTGRIND, RPTGRNMS, RTCFGWIN) VALUES ( @RTGRSBIN, @RTPACHIN, @RPTGRIND, @RPTGRNMS, @RTCFGWIN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA45100SI] TO [DYNGRP]
GO
