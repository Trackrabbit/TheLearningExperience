SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00300SS_2] (@SGMTNAME char(15)) AS  set nocount on SELECT TOP 1  SGMTNUMB, SGMTNAME, LOFSGMNT, MXLENSEG, USDFSGKY, MNSEGIND, SegmentWidth, DEX_ROW_TS, DEX_ROW_ID FROM .SY00300 WHERE SGMTNAME = @SGMTNAME ORDER BY SGMTNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00300SS_2] TO [DYNGRP]
GO