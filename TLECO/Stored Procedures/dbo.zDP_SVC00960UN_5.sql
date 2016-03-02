SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00960UN_5] (@BS int, @ANI_Number char(13), @ANI_Number_RS char(13), @ANI_Number_RE char(13)) AS  set nocount on IF @ANI_Number_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE ( ANI_Number > @ANI_Number ) ORDER BY ANI_Number ASC, DEX_ROW_ID ASC END ELSE IF @ANI_Number_RS = @ANI_Number_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE ANI_Number = @ANI_Number_RS AND ( ANI_Number > @ANI_Number ) ORDER BY ANI_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE ANI_Number BETWEEN @ANI_Number_RS AND @ANI_Number_RE AND ( ANI_Number > @ANI_Number ) ORDER BY ANI_Number ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00960UN_5] TO [DYNGRP]
GO
