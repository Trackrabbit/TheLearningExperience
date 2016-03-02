SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04090SI] (@SocialNetworkID smallint, @SocialNetworkName char(51), @SocialNetworkAccessUrl char(255), @SocialNetworkLogo char(255), @SocialNetworkStatus tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04090 (SocialNetworkID, SocialNetworkName, SocialNetworkAccessUrl, SocialNetworkLogo, SocialNetworkStatus) VALUES ( @SocialNetworkID, @SocialNetworkName, @SocialNetworkAccessUrl, @SocialNetworkLogo, @SocialNetworkStatus) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04090SI] TO [DYNGRP]
GO
