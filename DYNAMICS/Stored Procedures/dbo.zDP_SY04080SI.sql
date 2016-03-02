SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04080SI] (@CardType smallint, @CardID char(61), @SocialNetworkID smallint, @MemberID char(51), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04080 (CardType, CardID, SocialNetworkID, MemberID) VALUES ( @CardType, @CardID, @SocialNetworkID, @MemberID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04080SI] TO [DYNGRP]
GO
