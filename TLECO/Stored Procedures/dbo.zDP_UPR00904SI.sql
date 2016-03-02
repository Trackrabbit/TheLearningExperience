SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00904SI] (@EMPLOYID char(15), @SEQNUMBR int, @Effective_Date datetime, @HealthInsDependentCov smallint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00904 (EMPLOYID, SEQNUMBR, Effective_Date, HealthInsDependentCov, CHANGEBY_I, CHANGEDATE_I) VALUES ( @EMPLOYID, @SEQNUMBR, @Effective_Date, @HealthInsDependentCov, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00904SI] TO [DYNGRP]
GO
