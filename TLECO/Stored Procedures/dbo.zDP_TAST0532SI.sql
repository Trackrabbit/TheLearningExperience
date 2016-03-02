SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAST0532SI] (@YEAR1 smallint, @PAYPEROD smallint, @ISEQUENCENUMBER_I smallint, @STRTDATE datetime, @ENDDATE datetime, @ACCRUED tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TAST0532 (YEAR1, PAYPEROD, ISEQUENCENUMBER_I, STRTDATE, ENDDATE, ACCRUED) VALUES ( @YEAR1, @PAYPEROD, @ISEQUENCENUMBER_I, @STRTDATE, @ENDDATE, @ACCRUED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAST0532SI] TO [DYNGRP]
GO
