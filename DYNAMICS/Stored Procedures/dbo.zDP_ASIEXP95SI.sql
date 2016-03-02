SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP95SI] (@SETUPKEY smallint, @ASI_Auto_Open_Explorer tinyint, @ASI_Default_Window_Size smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASIEXP95 (SETUPKEY, ASI_Auto_Open_Explorer, ASI_Default_Window_Size) VALUES ( @SETUPKEY, @ASI_Auto_Open_Explorer, @ASI_Default_Window_Size) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP95SI] TO [DYNGRP]
GO
