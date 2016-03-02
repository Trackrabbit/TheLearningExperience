SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM40105SI] (@USERID char(15), @OptionSelected_1 tinyint, @OptionSelected_2 tinyint, @OptionSelected_3 tinyint, @OptionSelected_4 tinyint, @OptionSelected_5 tinyint, @OptionSelected_6 tinyint, @OptionSelected_7 tinyint, @OptionSelected_8 tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM40105 (USERID, OptionSelected_1, OptionSelected_2, OptionSelected_3, OptionSelected_4, OptionSelected_5, OptionSelected_6, OptionSelected_7, OptionSelected_8) VALUES ( @USERID, @OptionSelected_1, @OptionSelected_2, @OptionSelected_3, @OptionSelected_4, @OptionSelected_5, @OptionSelected_6, @OptionSelected_7, @OptionSelected_8) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40105SI] TO [DYNGRP]
GO
