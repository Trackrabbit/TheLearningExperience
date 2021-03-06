SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR30101SI] (@EMPLOYID char(15), @UNIVERSITY char(31), @SEQNUMBR int, @MAJOR char(31), @GRADUATIONYEAR char(5), @DEGREE char(31), @GPA char(5), @GPABASE char(3), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR30101 (EMPLOYID, UNIVERSITY, SEQNUMBR, MAJOR, GRADUATIONYEAR, DEGREE, GPA, GPABASE) VALUES ( @EMPLOYID, @UNIVERSITY, @SEQNUMBR, @MAJOR, @GRADUATIONYEAR, @DEGREE, @GPA, @GPABASE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR30101SI] TO [DYNGRP]
GO
