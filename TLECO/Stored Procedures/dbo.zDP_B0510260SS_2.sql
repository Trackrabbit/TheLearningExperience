SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510260SS_2] (@MJW_Keys_Lock tinyint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Key, MJW_Keys_Lock, DEX_ROW_ID FROM .B0510260 WHERE MJW_Keys_Lock = @MJW_Keys_Lock ORDER BY MJW_Keys_Lock ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510260SS_2] TO [DYNGRP]
GO
