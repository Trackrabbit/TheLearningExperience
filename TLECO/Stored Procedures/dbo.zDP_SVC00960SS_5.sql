SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00960SS_5] (@ANI_Number char(13)) AS  set nocount on SELECT TOP 1  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE ANI_Number = @ANI_Number ORDER BY ANI_Number ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00960SS_5] TO [DYNGRP]
GO