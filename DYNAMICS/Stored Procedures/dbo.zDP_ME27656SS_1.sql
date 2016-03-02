SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27656SS_1] (@CMPANYID smallint, @ME_Major_Version smallint, @ME_Minor_Version smallint, @ME_Build_Number smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CMPANYID, ME_Major_Version, ME_Minor_Version, ME_Build_Number, ME_Attempted_Date, ME_Attempted_Time, ME_Attempted_Build, ME_Attempted_Major_Versi, ME_Attempted_Minor_Versi, ME_Completed_Date, ME_Completed_Time, USERID, ME_Status_Description, DEX_ROW_ID FROM .ME27656 WHERE CMPANYID = @CMPANYID AND ME_Major_Version = @ME_Major_Version AND ME_Minor_Version = @ME_Minor_Version AND ME_Build_Number = @ME_Build_Number ORDER BY CMPANYID ASC, ME_Major_Version ASC, ME_Minor_Version ASC, ME_Build_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27656SS_1] TO [DYNGRP]
GO
