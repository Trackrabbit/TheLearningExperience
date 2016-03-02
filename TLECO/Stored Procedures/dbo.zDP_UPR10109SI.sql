SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10109SI] (@YEAR1 smallint, @EMPLOYID char(15), @SEQNUMBR int, @FRSTNAME char(15), @MIDDLEINITIAL char(1), @LASTNAME char(21), @DEPENDENTSSN char(15), @BRTHDATE datetime, @CoveredForYear tinyint, @CoveredMonth_1 tinyint, @CoveredMonth_2 tinyint, @CoveredMonth_3 tinyint, @CoveredMonth_4 tinyint, @CoveredMonth_5 tinyint, @CoveredMonth_6 tinyint, @CoveredMonth_7 tinyint, @CoveredMonth_8 tinyint, @CoveredMonth_9 tinyint, @CoveredMonth_10 tinyint, @CoveredMonth_11 tinyint, @CoveredMonth_12 tinyint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10109 (YEAR1, EMPLOYID, SEQNUMBR, FRSTNAME, MIDDLEINITIAL, LASTNAME, DEPENDENTSSN, BRTHDATE, CoveredForYear, CoveredMonth_1, CoveredMonth_2, CoveredMonth_3, CoveredMonth_4, CoveredMonth_5, CoveredMonth_6, CoveredMonth_7, CoveredMonth_8, CoveredMonth_9, CoveredMonth_10, CoveredMonth_11, CoveredMonth_12, CHANGEBY_I, CHANGEDATE_I) VALUES ( @YEAR1, @EMPLOYID, @SEQNUMBR, @FRSTNAME, @MIDDLEINITIAL, @LASTNAME, @DEPENDENTSSN, @BRTHDATE, @CoveredForYear, @CoveredMonth_1, @CoveredMonth_2, @CoveredMonth_3, @CoveredMonth_4, @CoveredMonth_5, @CoveredMonth_6, @CoveredMonth_7, @CoveredMonth_8, @CoveredMonth_9, @CoveredMonth_10, @CoveredMonth_11, @CoveredMonth_12, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10109SI] TO [DYNGRP]
GO
