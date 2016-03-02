SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06021SI] (@WOTYPE char(11), @SQNCLINE numeric(19,5), @WOSTAT char(3), @STATIONID char(11), @TECHID char(11), @WAITTME int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC06021 (WOTYPE, SQNCLINE, WOSTAT, STATIONID, TECHID, WAITTME) VALUES ( @WOTYPE, @SQNCLINE, @WOSTAT, @STATIONID, @TECHID, @WAITTME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06021SI] TO [DYNGRP]
GO