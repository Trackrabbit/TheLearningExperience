SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT60100L_1] (@Setup_Option_RS smallint, @Setup_Option_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @Setup_Option_RS IS NULL BEGIN SELECT TOP 25  Setup_Option, Setup_CB, DEX_ROW_ID FROM .EXT60100 ORDER BY Setup_Option DESC END ELSE IF @Setup_Option_RS = @Setup_Option_RE BEGIN SELECT TOP 25  Setup_Option, Setup_CB, DEX_ROW_ID FROM .EXT60100 WHERE Setup_Option = @Setup_Option_RS ORDER BY Setup_Option DESC END ELSE BEGIN SELECT TOP 25  Setup_Option, Setup_CB, DEX_ROW_ID FROM .EXT60100 WHERE Setup_Option BETWEEN @Setup_Option_RS AND @Setup_Option_RE ORDER BY Setup_Option DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT60100L_1] TO [DYNGRP]
GO
