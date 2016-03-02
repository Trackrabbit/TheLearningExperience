SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27656SI] (@CMPANYID smallint, @ME_Major_Version smallint, @ME_Minor_Version smallint, @ME_Build_Number smallint, @ME_Attempted_Date datetime, @ME_Attempted_Time datetime, @ME_Attempted_Build smallint, @ME_Attempted_Major_Versi smallint, @ME_Attempted_Minor_Versi smallint, @ME_Completed_Date datetime, @ME_Completed_Time datetime, @USERID char(15), @ME_Status_Description char(51), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27656 (CMPANYID, ME_Major_Version, ME_Minor_Version, ME_Build_Number, ME_Attempted_Date, ME_Attempted_Time, ME_Attempted_Build, ME_Attempted_Major_Versi, ME_Attempted_Minor_Versi, ME_Completed_Date, ME_Completed_Time, USERID, ME_Status_Description) VALUES ( @CMPANYID, @ME_Major_Version, @ME_Minor_Version, @ME_Build_Number, @ME_Attempted_Date, @ME_Attempted_Time, @ME_Attempted_Build, @ME_Attempted_Major_Versi, @ME_Attempted_Minor_Versi, @ME_Completed_Date, @ME_Completed_Time, @USERID, @ME_Status_Description) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27656SI] TO [DYNGRP]
GO
