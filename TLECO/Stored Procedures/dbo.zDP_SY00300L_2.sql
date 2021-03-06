SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00300L_2] (@SGMTNAME_RS char(15), @SGMTNAME_RE char(15)) AS  set nocount on IF @SGMTNAME_RS IS NULL BEGIN SELECT TOP 25  SGMTNUMB, SGMTNAME, LOFSGMNT, MXLENSEG, USDFSGKY, MNSEGIND, SegmentWidth, DEX_ROW_TS, DEX_ROW_ID FROM .SY00300 ORDER BY SGMTNAME DESC END ELSE IF @SGMTNAME_RS = @SGMTNAME_RE BEGIN SELECT TOP 25  SGMTNUMB, SGMTNAME, LOFSGMNT, MXLENSEG, USDFSGKY, MNSEGIND, SegmentWidth, DEX_ROW_TS, DEX_ROW_ID FROM .SY00300 WHERE SGMTNAME = @SGMTNAME_RS ORDER BY SGMTNAME DESC END ELSE BEGIN SELECT TOP 25  SGMTNUMB, SGMTNAME, LOFSGMNT, MXLENSEG, USDFSGKY, MNSEGIND, SegmentWidth, DEX_ROW_TS, DEX_ROW_ID FROM .SY00300 WHERE SGMTNAME BETWEEN @SGMTNAME_RS AND @SGMTNAME_RE ORDER BY SGMTNAME DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00300L_2] TO [DYNGRP]
GO
