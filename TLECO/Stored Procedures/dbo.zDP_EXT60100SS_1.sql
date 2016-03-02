SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT60100SS_1] (@Setup_Option smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Setup_Option, Setup_CB, DEX_ROW_ID FROM .EXT60100 WHERE Setup_Option = @Setup_Option ORDER BY Setup_Option ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT60100SS_1] TO [DYNGRP]
GO
