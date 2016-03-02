SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20600L_1] (@Xfr_Record_Number_RS numeric(19,5), @Xfr_Record_Number_RE numeric(19,5)) AS  set nocount on IF @Xfr_Record_Number_RS IS NULL BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 ORDER BY Xfr_Record_Number DESC END ELSE IF @Xfr_Record_Number_RS = @Xfr_Record_Number_RE BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE Xfr_Record_Number = @Xfr_Record_Number_RS ORDER BY Xfr_Record_Number DESC END ELSE BEGIN SELECT TOP 25  Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX, DEX_ROW_ID FROM .CM20600 WHERE Xfr_Record_Number BETWEEN @Xfr_Record_Number_RS AND @Xfr_Record_Number_RE ORDER BY Xfr_Record_Number DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20600L_1] TO [DYNGRP]
GO
