SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510120N_1] (@BS int, @MJW_Offering_ID char(21), @MJW_Property_ID char(21), @MJW_Offering_ID_RS char(21), @MJW_Property_ID_RS char(21), @MJW_Offering_ID_RE char(21), @MJW_Property_ID_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Offering_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Property_ID, NOTEINDX, DEX_ROW_ID FROM .B0510120 WHERE ( MJW_Offering_ID = @MJW_Offering_ID AND MJW_Property_ID > @MJW_Property_ID OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJW_Property_ID ASC END ELSE IF @MJW_Offering_ID_RS = @MJW_Offering_ID_RE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Property_ID, NOTEINDX, DEX_ROW_ID FROM .B0510120 WHERE MJW_Offering_ID = @MJW_Offering_ID_RS AND MJW_Property_ID BETWEEN @MJW_Property_ID_RS AND @MJW_Property_ID_RE AND ( MJW_Offering_ID = @MJW_Offering_ID AND MJW_Property_ID > @MJW_Property_ID OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJW_Property_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Property_ID, NOTEINDX, DEX_ROW_ID FROM .B0510120 WHERE MJW_Offering_ID BETWEEN @MJW_Offering_ID_RS AND @MJW_Offering_ID_RE AND MJW_Property_ID BETWEEN @MJW_Property_ID_RS AND @MJW_Property_ID_RE AND ( MJW_Offering_ID = @MJW_Offering_ID AND MJW_Property_ID > @MJW_Property_ID OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJW_Property_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510120N_1] TO [DYNGRP]
GO
