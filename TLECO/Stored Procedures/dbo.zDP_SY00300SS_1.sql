SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00300SS_1] (@SGMTNUMB smallint) AS  set nocount on SELECT TOP 1  SGMTNUMB, SGMTNAME, LOFSGMNT, MXLENSEG, USDFSGKY, MNSEGIND, SegmentWidth, DEX_ROW_TS, DEX_ROW_ID FROM .SY00300 WHERE SGMTNUMB = @SGMTNUMB ORDER BY SGMTNUMB ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00300SS_1] TO [DYNGRP]
GO
