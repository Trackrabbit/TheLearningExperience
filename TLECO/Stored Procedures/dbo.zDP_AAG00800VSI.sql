SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00800VSI] (@aaMstrID int, @aaLinkType smallint, @aaDimID int, @aaMasterID char(129), @aaMstrIDDescr char(65), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG00800V (aaMstrID, aaLinkType, aaDimID, aaMasterID, aaMstrIDDescr) VALUES ( @aaMstrID, @aaLinkType, @aaDimID, @aaMasterID, @aaMstrIDDescr) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00800VSI] TO [DYNGRP]
GO
