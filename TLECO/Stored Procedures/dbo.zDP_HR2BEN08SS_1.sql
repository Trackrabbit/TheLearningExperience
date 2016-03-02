SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2BEN08SS_1] (@EMPID_I char(15), @BENEFIT char(7), @I1_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, BENEFIT, I1_I, DATE1, BENEFITTYPE_I, BENEFITSTATUS_I, INACTIVE, OVERRIDE_I, IBENEFITAMOUNT_I, LIFEAMTEMPL_I, LIFEAMTSPOUSE_I, LIFEAMTCHILDREN_I, COSTEMPLOYEE_I, COSTEMPLOYER_I, COSTOTHER1_I, COSTOTHER2_I, COSTOTHER3_I, NUMBEROFCHILDREN_I, COSTTOTAL_I, COSTCOBRA_I, DEX_ROW_ID FROM .HR2BEN08 WHERE EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND I1_I = @I1_I ORDER BY EMPID_I ASC, BENEFIT ASC, I1_I DESC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2BEN08SS_1] TO [DYNGRP]
GO
