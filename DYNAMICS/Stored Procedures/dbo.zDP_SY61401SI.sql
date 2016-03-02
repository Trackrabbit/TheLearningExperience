SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY61401SI] (@USERID char(15), @SocialNetworkID smallint, @oAuthToken char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY61401 (USERID, SocialNetworkID, oAuthToken) VALUES ( @USERID, @SocialNetworkID, @oAuthToken) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY61401SI] TO [DYNGRP]
GO
