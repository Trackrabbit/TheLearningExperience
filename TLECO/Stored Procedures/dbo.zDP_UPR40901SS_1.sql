SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40901SS_1] (@DEDUCTON char(7), @BSDONCDE char(7)) AS  set nocount on SELECT TOP 1  DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR40901 WHERE DEDUCTON = @DEDUCTON AND BSDONCDE = @BSDONCDE ORDER BY DEDUCTON ASC, BSDONCDE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40901SS_1] TO [DYNGRP]
GO
