SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM40105SS_1] (@USERID char(15)) AS set nocount on SELECT TOP 1  USERID, OptionSelected_1, OptionSelected_2, OptionSelected_3, OptionSelected_4, OptionSelected_5, OptionSelected_6, OptionSelected_7, OptionSelected_8, DEX_ROW_ID FROM .PM40105 WHERE USERID = @USERID ORDER BY USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40105SS_1] TO [DYNGRP]
GO
