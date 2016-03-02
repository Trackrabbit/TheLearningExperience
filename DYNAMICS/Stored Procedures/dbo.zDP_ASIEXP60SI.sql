SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASIEXP60SI] (@ASI_Favorite_Dict_ID smallint, @ASI_Favorite_Type smallint, @ASI_Goto_Sequence smallint, @ASI_Goto_Prompt char(51), @ASI_GoTo_Value int, @ASI_GoTo_Default tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASIEXP60 (ASI_Favorite_Dict_ID, ASI_Favorite_Type, ASI_Goto_Sequence, ASI_Goto_Prompt, ASI_GoTo_Value, ASI_GoTo_Default) VALUES ( @ASI_Favorite_Dict_ID, @ASI_Favorite_Type, @ASI_Goto_Sequence, @ASI_Goto_Prompt, @ASI_GoTo_Value, @ASI_GoTo_Default) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASIEXP60SI] TO [DYNGRP]
GO
