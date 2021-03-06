SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10104SS_2] (@RPTNGYR smallint, @EMPLOYID char(15), @SPCLCODE char(7)) AS  set nocount on SELECT TOP 1  RPTNGYR, EMPLOYID, SPCLCODE, SPCLBNUM, SPCLAMNT, W2PRINTD, DEX_ROW_ID FROM .UPR10104 WHERE RPTNGYR = @RPTNGYR AND EMPLOYID = @EMPLOYID AND SPCLCODE = @SPCLCODE ORDER BY RPTNGYR ASC, EMPLOYID ASC, SPCLCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10104SS_2] TO [DYNGRP]
GO
