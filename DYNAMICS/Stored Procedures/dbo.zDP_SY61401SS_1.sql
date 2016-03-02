SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY61401SS_1] (@USERID char(15), @SocialNetworkID smallint) AS  set nocount on SELECT TOP 1  USERID, SocialNetworkID, oAuthToken, DEX_ROW_ID FROM .SY61401 WHERE USERID = @USERID AND SocialNetworkID = @SocialNetworkID ORDER BY USERID ASC, SocialNetworkID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY61401SS_1] TO [DYNGRP]
GO
