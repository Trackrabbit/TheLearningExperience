SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE000200SS_1] (@SGMTNUMB smallint, @SGMNTID char(67), @ACTINDX int) AS  set nocount on SELECT TOP 1  SGMTNUMB, SGMNTID, ACTINDX, DEX_ROW_ID FROM .SE000200 WHERE SGMTNUMB = @SGMTNUMB AND SGMNTID = @SGMNTID AND ACTINDX = @ACTINDX ORDER BY SGMTNUMB ASC, SGMNTID ASC, ACTINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000200SS_1] TO [DYNGRP]
GO
