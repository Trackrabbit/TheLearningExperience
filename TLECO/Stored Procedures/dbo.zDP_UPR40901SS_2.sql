SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40901SS_2] (@BSDONCDE char(7), @DEDUCTON char(7)) AS  set nocount on SELECT TOP 1  DEDUCTON, BSDONCDE, DEX_ROW_ID FROM .UPR40901 WHERE BSDONCDE = @BSDONCDE AND DEDUCTON = @DEDUCTON ORDER BY BSDONCDE ASC, DEDUCTON ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40901SS_2] TO [DYNGRP]
GO
