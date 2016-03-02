SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BSSI0200L_1] (@BSSI_Product_ID_RS smallint, @BSSI_Product_ID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Product_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Product_ID, BSSI_Build_Number, DATE1, TIME1, PRODNAME, DEX_ROW_ID FROM .BSSI0200 ORDER BY BSSI_Product_ID DESC END ELSE IF @BSSI_Product_ID_RS = @BSSI_Product_ID_RE BEGIN SELECT TOP 25  BSSI_Product_ID, BSSI_Build_Number, DATE1, TIME1, PRODNAME, DEX_ROW_ID FROM .BSSI0200 WHERE BSSI_Product_ID = @BSSI_Product_ID_RS ORDER BY BSSI_Product_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Product_ID, BSSI_Build_Number, DATE1, TIME1, PRODNAME, DEX_ROW_ID FROM .BSSI0200 WHERE BSSI_Product_ID BETWEEN @BSSI_Product_ID_RS AND @BSSI_Product_ID_RE ORDER BY BSSI_Product_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BSSI0200L_1] TO [DYNGRP]
GO
