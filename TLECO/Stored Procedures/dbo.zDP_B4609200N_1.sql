SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4609200N_1] (@BS int, @BSSI_Amenity_ID char(25), @BSSI_Amenity_ID_RS char(25), @BSSI_Amenity_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Amenity_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Amenity_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609200 WHERE ( BSSI_Amenity_ID > @BSSI_Amenity_ID ) ORDER BY BSSI_Amenity_ID ASC END ELSE IF @BSSI_Amenity_ID_RS = @BSSI_Amenity_ID_RE BEGIN SELECT TOP 25  BSSI_Amenity_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609200 WHERE BSSI_Amenity_ID = @BSSI_Amenity_ID_RS AND ( BSSI_Amenity_ID > @BSSI_Amenity_ID ) ORDER BY BSSI_Amenity_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Amenity_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609200 WHERE BSSI_Amenity_ID BETWEEN @BSSI_Amenity_ID_RS AND @BSSI_Amenity_ID_RE AND ( BSSI_Amenity_ID > @BSSI_Amenity_ID ) ORDER BY BSSI_Amenity_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4609200N_1] TO [DYNGRP]
GO
