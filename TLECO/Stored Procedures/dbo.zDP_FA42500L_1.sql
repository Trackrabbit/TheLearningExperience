SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42500L_1] (@UserField_RS smallint, @TableValue_RS char(41), @UserField_RE smallint, @TableValue_RE char(41)) AS  set nocount on IF @UserField_RS IS NULL BEGIN SELECT TOP 25  UserField, TableValue, DEX_ROW_ID FROM .FA42500 ORDER BY UserField DESC, TableValue DESC END ELSE IF @UserField_RS = @UserField_RE BEGIN SELECT TOP 25  UserField, TableValue, DEX_ROW_ID FROM .FA42500 WHERE UserField = @UserField_RS AND TableValue BETWEEN @TableValue_RS AND @TableValue_RE ORDER BY UserField DESC, TableValue DESC END ELSE BEGIN SELECT TOP 25  UserField, TableValue, DEX_ROW_ID FROM .FA42500 WHERE UserField BETWEEN @UserField_RS AND @UserField_RE AND TableValue BETWEEN @TableValue_RS AND @TableValue_RE ORDER BY UserField DESC, TableValue DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42500L_1] TO [DYNGRP]
GO
