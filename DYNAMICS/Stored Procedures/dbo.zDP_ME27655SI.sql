SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27655SI] (@CMPANYID smallint, @ME_Inactive_for_Payables tinyint, @ME_Inactive_for_Payroll tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27655 (CMPANYID, ME_Inactive_for_Payables, ME_Inactive_for_Payroll) VALUES ( @CMPANYID, @ME_Inactive_for_Payables, @ME_Inactive_for_Payroll) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27655SI] TO [DYNGRP]
GO
