SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00501SI] (@EMPLOYID char(15), @DEDUCTON char(7), @BSDONCDE char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00501 (EMPLOYID, DEDUCTON, BSDONCDE) VALUES ( @EMPLOYID, @DEDUCTON, @BSDONCDE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00501SI] TO [DYNGRP]
GO
