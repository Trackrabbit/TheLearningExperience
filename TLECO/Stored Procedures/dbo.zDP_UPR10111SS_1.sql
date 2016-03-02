SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10111SS_1] (@YEAR1 smallint, @EMPLOYID char(15)) AS  set nocount on SELECT TOP 1  YEAR1, EMPLOYID, MonthofCoverage_1, MonthofCoverage_2, MonthofCoverage_3, MonthofCoverage_4, MonthofCoverage_5, MonthofCoverage_6, MonthofCoverage_7, MonthofCoverage_8, MonthofCoverage_9, MonthofCoverage_10, MonthofCoverage_11, MonthofCoverage_12, MonthofCost_1, MonthofCost_2, MonthofCost_3, MonthofCost_4, MonthofCost_5, MonthofCost_6, MonthofCost_7, MonthofCost_8, MonthofCost_9, MonthofCost_10, MonthofCost_11, MonthofCost_12, MonthofSafeHarbor_1, MonthofSafeHarbor_2, MonthofSafeHarbor_3, MonthofSafeHarbor_4, MonthofSafeHarbor_5, MonthofSafeHarbor_6, MonthofSafeHarbor_7, MonthofSafeHarbor_8, MonthofSafeHarbor_9, MonthofSafeHarbor_10, MonthofSafeHarbor_11, MonthofSafeHarbor_12, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .UPR10111 WHERE YEAR1 = @YEAR1 AND EMPLOYID = @EMPLOYID ORDER BY YEAR1 ASC, EMPLOYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10111SS_1] TO [DYNGRP]
GO
