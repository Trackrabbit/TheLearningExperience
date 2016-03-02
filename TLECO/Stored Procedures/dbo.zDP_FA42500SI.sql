SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42500SI] (@UserField smallint, @TableValue char(41), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA42500 (UserField, TableValue) VALUES ( @UserField, @TableValue) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42500SI] TO [DYNGRP]
GO
