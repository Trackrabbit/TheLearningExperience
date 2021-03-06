SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640713N_2] (@BS int, @LOCNCODE char(11), @DEX_ROW_ID int, @LOCNCODE_RS char(11), @LOCNCODE_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Amenity_ID, NOTEINDX, DEX_ROW_ID FROM .B4640713 WHERE ( LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Amenity_ID, NOTEINDX, DEX_ROW_ID FROM .B4640713 WHERE LOCNCODE = @LOCNCODE_RS AND ( LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Amenity_ID, NOTEINDX, DEX_ROW_ID FROM .B4640713 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( LOCNCODE = @LOCNCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640713N_2] TO [DYNGRP]
GO
