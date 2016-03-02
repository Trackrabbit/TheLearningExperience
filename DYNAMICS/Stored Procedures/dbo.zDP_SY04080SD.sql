SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04080SD] (@CardType smallint, @CardID char(61), @SocialNetworkID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY04080 WHERE CardType = @CardType AND CardID = @CardID AND SocialNetworkID = @SocialNetworkID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY04080 WHERE CardType = @CardType AND CardID = @CardID AND SocialNetworkID = @SocialNetworkID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04080SD] TO [DYNGRP]
GO
