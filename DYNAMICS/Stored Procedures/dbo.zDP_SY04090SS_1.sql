SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04090SS_1] (@SocialNetworkID smallint) AS  set nocount on SELECT TOP 1  SocialNetworkID, SocialNetworkName, SocialNetworkAccessUrl, SocialNetworkLogo, SocialNetworkStatus, DEX_ROW_ID FROM .SY04090 WHERE SocialNetworkID = @SocialNetworkID ORDER BY SocialNetworkID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04090SS_1] TO [DYNGRP]
GO
