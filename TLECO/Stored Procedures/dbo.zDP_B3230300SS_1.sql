SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B3230300SS_1] (@BACHNUMB char(15), @BCHSOURC char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, BSSI_Consolidate, DEX_ROW_ID FROM .B3230300 WHERE BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC ORDER BY BACHNUMB ASC, BCHSOURC ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B3230300SS_1] TO [DYNGRP]
GO
