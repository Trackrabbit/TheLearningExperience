SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00680SS_1] (@CNTTYPE char(11)) AS  set nocount on SELECT TOP 1  CNTTYPE, svcCoveragePeriodStart2_1, svcCoveragePeriodStart2_2, svcCoveragePeriodStart2_3, svcCoveragePeriodStart2_4, svcCoveragePeriodStart2_5, svcCoveragePeriodStart2_6, svcCoveragePeriodStart2_7, svcCoveragePeriodEnd2_1, svcCoveragePeriodEnd2_2, svcCoveragePeriodEnd2_3, svcCoveragePeriodEnd2_4, svcCoveragePeriodEnd2_5, svcCoveragePeriodEnd2_6, svcCoveragePeriodEnd2_7, svcCoveragePeriodStart3_1, svcCoveragePeriodStart3_2, svcCoveragePeriodStart3_3, svcCoveragePeriodStart3_4, svcCoveragePeriodStart3_5, svcCoveragePeriodStart3_6, svcCoveragePeriodStart3_7, svcCoveragePeriodEnd3_1, svcCoveragePeriodEnd3_2, svcCoveragePeriodEnd3_3, svcCoveragePeriodEnd3_4, svcCoveragePeriodEnd3_5, svcCoveragePeriodEnd3_6, svcCoveragePeriodEnd3_7, svcCoveragePeriodStart4_1, svcCoveragePeriodStart4_2, svcCoveragePeriodStart4_3, svcCoveragePeriodStart4_4, svcCoveragePeriodStart4_5, svcCoveragePeriodStart4_6, svcCoveragePeriodStart4_7, svcCoveragePeriodEnd4_1, svcCoveragePeriodEnd4_2, svcCoveragePeriodEnd4_3, svcCoveragePeriodEnd4_4, svcCoveragePeriodEnd4_5, svcCoveragePeriodEnd4_6, svcCoveragePeriodEnd4_7, DEX_ROW_ID FROM .SVC00680 WHERE CNTTYPE = @CNTTYPE ORDER BY CNTTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00680SS_1] TO [DYNGRP]
GO
