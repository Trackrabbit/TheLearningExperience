SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFMTEMPSI] (@CHEKBKID char(15), @MKTOPROC tinyint, @CFM_Exchange_Rate numeric(19,5), @CFM_Calc_Method smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CFMTEMP (CHEKBKID, MKTOPROC, CFM_Exchange_Rate, CFM_Calc_Method) VALUES ( @CHEKBKID, @MKTOPROC, @CFM_Exchange_Rate, @CFM_Calc_Method) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFMTEMPSI] TO [DYNGRP]
GO
