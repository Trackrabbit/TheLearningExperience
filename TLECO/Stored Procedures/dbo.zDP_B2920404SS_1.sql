SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920404SS_1] (@UPRBCHOR smallint, @BACHNUMB char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BACHNUMB, UPRBCHOR, BCHCOMNT, DEX_ROW_ID FROM .B2920404 WHERE UPRBCHOR = @UPRBCHOR AND BACHNUMB = @BACHNUMB ORDER BY UPRBCHOR ASC, BACHNUMB ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920404SS_1] TO [DYNGRP]
GO
