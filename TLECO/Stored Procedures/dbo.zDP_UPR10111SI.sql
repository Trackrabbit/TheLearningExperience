SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10111SI] (@YEAR1 smallint, @EMPLOYID char(15), @MonthofCoverage_1 smallint, @MonthofCoverage_2 smallint, @MonthofCoverage_3 smallint, @MonthofCoverage_4 smallint, @MonthofCoverage_5 smallint, @MonthofCoverage_6 smallint, @MonthofCoverage_7 smallint, @MonthofCoverage_8 smallint, @MonthofCoverage_9 smallint, @MonthofCoverage_10 smallint, @MonthofCoverage_11 smallint, @MonthofCoverage_12 smallint, @MonthofCost_1 numeric(19,5), @MonthofCost_2 numeric(19,5), @MonthofCost_3 numeric(19,5), @MonthofCost_4 numeric(19,5), @MonthofCost_5 numeric(19,5), @MonthofCost_6 numeric(19,5), @MonthofCost_7 numeric(19,5), @MonthofCost_8 numeric(19,5), @MonthofCost_9 numeric(19,5), @MonthofCost_10 numeric(19,5), @MonthofCost_11 numeric(19,5), @MonthofCost_12 numeric(19,5), @MonthofSafeHarbor_1 smallint, @MonthofSafeHarbor_2 smallint, @MonthofSafeHarbor_3 smallint, @MonthofSafeHarbor_4 smallint, @MonthofSafeHarbor_5 smallint, @MonthofSafeHarbor_6 smallint, @MonthofSafeHarbor_7 smallint, @MonthofSafeHarbor_8 smallint, @MonthofSafeHarbor_9 smallint, @MonthofSafeHarbor_10 smallint, @MonthofSafeHarbor_11 smallint, @MonthofSafeHarbor_12 smallint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10111 (YEAR1, EMPLOYID, MonthofCoverage_1, MonthofCoverage_2, MonthofCoverage_3, MonthofCoverage_4, MonthofCoverage_5, MonthofCoverage_6, MonthofCoverage_7, MonthofCoverage_8, MonthofCoverage_9, MonthofCoverage_10, MonthofCoverage_11, MonthofCoverage_12, MonthofCost_1, MonthofCost_2, MonthofCost_3, MonthofCost_4, MonthofCost_5, MonthofCost_6, MonthofCost_7, MonthofCost_8, MonthofCost_9, MonthofCost_10, MonthofCost_11, MonthofCost_12, MonthofSafeHarbor_1, MonthofSafeHarbor_2, MonthofSafeHarbor_3, MonthofSafeHarbor_4, MonthofSafeHarbor_5, MonthofSafeHarbor_6, MonthofSafeHarbor_7, MonthofSafeHarbor_8, MonthofSafeHarbor_9, MonthofSafeHarbor_10, MonthofSafeHarbor_11, MonthofSafeHarbor_12, CHANGEBY_I, CHANGEDATE_I) VALUES ( @YEAR1, @EMPLOYID, @MonthofCoverage_1, @MonthofCoverage_2, @MonthofCoverage_3, @MonthofCoverage_4, @MonthofCoverage_5, @MonthofCoverage_6, @MonthofCoverage_7, @MonthofCoverage_8, @MonthofCoverage_9, @MonthofCoverage_10, @MonthofCoverage_11, @MonthofCoverage_12, @MonthofCost_1, @MonthofCost_2, @MonthofCost_3, @MonthofCost_4, @MonthofCost_5, @MonthofCost_6, @MonthofCost_7, @MonthofCost_8, @MonthofCost_9, @MonthofCost_10, @MonthofCost_11, @MonthofCost_12, @MonthofSafeHarbor_1, @MonthofSafeHarbor_2, @MonthofSafeHarbor_3, @MonthofSafeHarbor_4, @MonthofSafeHarbor_5, @MonthofSafeHarbor_6, @MonthofSafeHarbor_7, @MonthofSafeHarbor_8, @MonthofSafeHarbor_9, @MonthofSafeHarbor_10, @MonthofSafeHarbor_11, @MonthofSafeHarbor_12, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10111SI] TO [DYNGRP]
GO