SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40200SS_1] (@SGMTNUMB smallint, @SGMNTID char(67)) AS  set nocount on SELECT TOP 1  SGMTNUMB, SGMNTID, DSCRIPTN, SEGCOUNT, NOTEINDX, DEX_ROW_TS, DEX_ROW_ID FROM .GL40200 WHERE SGMTNUMB = @SGMTNUMB AND SGMNTID = @SGMNTID ORDER BY SGMTNUMB ASC, SGMNTID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40200SS_1] TO [DYNGRP]
GO