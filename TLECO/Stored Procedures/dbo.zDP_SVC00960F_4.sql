SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00960F_4] (@PHONNAME_RS char(21), @PHONNAME_RE char(21)) AS  set nocount on IF @PHONNAME_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 ORDER BY PHONNAME ASC, DEX_ROW_ID ASC END ELSE IF @PHONNAME_RS = @PHONNAME_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE PHONNAME = @PHONNAME_RS ORDER BY PHONNAME ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE PHONNAME BETWEEN @PHONNAME_RS AND @PHONNAME_RE ORDER BY PHONNAME ASC, DEX_ROW_ID ASC END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00960F_4] TO [DYNGRP]
GO