SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41102SI] (@Landed_Cost_Group_ID char(15), @Landed_Cost_ID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV41102 (Landed_Cost_Group_ID, Landed_Cost_ID) VALUES ( @Landed_Cost_Group_ID, @Landed_Cost_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41102SI] TO [DYNGRP]
GO
