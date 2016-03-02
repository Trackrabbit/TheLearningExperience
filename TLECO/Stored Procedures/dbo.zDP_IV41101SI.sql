SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV41101SI] (@Landed_Cost_Group_ID char(15), @Long_Description char(51), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV41101 (Landed_Cost_Group_ID, Long_Description, NOTEINDX) VALUES ( @Landed_Cost_Group_ID, @Long_Description, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV41101SI] TO [DYNGRP]
GO
