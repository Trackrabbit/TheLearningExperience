SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10107L_1] (@SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @Tracking_Number_RS char(41), @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint, @Tracking_Number_RE char(41)) AS  set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, Tracking_Number, DEX_ROW_ID FROM .SOP10107 ORDER BY SOPNUMBE DESC, SOPTYPE DESC, Tracking_Number DESC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, Tracking_Number, DEX_ROW_ID FROM .SOP10107 WHERE SOPNUMBE = @SOPNUMBE_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND Tracking_Number BETWEEN @Tracking_Number_RS AND @Tracking_Number_RE ORDER BY SOPNUMBE DESC, SOPTYPE DESC, Tracking_Number DESC END ELSE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, Tracking_Number, DEX_ROW_ID FROM .SOP10107 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND Tracking_Number BETWEEN @Tracking_Number_RS AND @Tracking_Number_RE ORDER BY SOPNUMBE DESC, SOPTYPE DESC, Tracking_Number DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10107L_1] TO [DYNGRP]
GO