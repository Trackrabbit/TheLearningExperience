SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpAppEnbN_1] (@BS int, @MODULEID smallint, @MODULEID_RS smallint, @MODULEID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @MODULEID_RS IS NULL BEGIN SELECT TOP 25  MODULEID, ACTIVE, DEX_ROW_ID FROM .gpAppEnb WHERE ( MODULEID > @MODULEID ) ORDER BY MODULEID ASC END ELSE IF @MODULEID_RS = @MODULEID_RE BEGIN SELECT TOP 25  MODULEID, ACTIVE, DEX_ROW_ID FROM .gpAppEnb WHERE MODULEID = @MODULEID_RS AND ( MODULEID > @MODULEID ) ORDER BY MODULEID ASC END ELSE BEGIN SELECT TOP 25  MODULEID, ACTIVE, DEX_ROW_ID FROM .gpAppEnb WHERE MODULEID BETWEEN @MODULEID_RS AND @MODULEID_RE AND ( MODULEID > @MODULEID ) ORDER BY MODULEID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpAppEnbN_1] TO [DYNGRP]
GO
