SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42500N_1] (@BS int, @UserField smallint, @TableValue char(41), @UserField_RS smallint, @TableValue_RS char(41), @UserField_RE smallint, @TableValue_RE char(41)) AS  set nocount on IF @UserField_RS IS NULL BEGIN SELECT TOP 25  UserField, TableValue, DEX_ROW_ID FROM .FA42500 WHERE ( UserField = @UserField AND TableValue > @TableValue OR UserField > @UserField ) ORDER BY UserField ASC, TableValue ASC END ELSE IF @UserField_RS = @UserField_RE BEGIN SELECT TOP 25  UserField, TableValue, DEX_ROW_ID FROM .FA42500 WHERE UserField = @UserField_RS AND TableValue BETWEEN @TableValue_RS AND @TableValue_RE AND ( UserField = @UserField AND TableValue > @TableValue OR UserField > @UserField ) ORDER BY UserField ASC, TableValue ASC END ELSE BEGIN SELECT TOP 25  UserField, TableValue, DEX_ROW_ID FROM .FA42500 WHERE UserField BETWEEN @UserField_RS AND @UserField_RE AND TableValue BETWEEN @TableValue_RS AND @TableValue_RE AND ( UserField = @UserField AND TableValue > @TableValue OR UserField > @UserField ) ORDER BY UserField ASC, TableValue ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42500N_1] TO [DYNGRP]
GO
