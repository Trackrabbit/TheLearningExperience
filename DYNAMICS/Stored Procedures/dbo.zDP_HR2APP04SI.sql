SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR2APP04SI] (@APPLICANTNUMBER_I numeric(19,5), @ISEQUENCENUMBER_I smallint, @UNIVERSITY char(31), @DEGREE char(31), @MAJOR char(31), @GPA char(5), @GPABASE char(3), @GRADUATIONYEAR char(5), @YEARS char(3), @NOTESINDEX_I numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR2APP04 (APPLICANTNUMBER_I, ISEQUENCENUMBER_I, UNIVERSITY, DEGREE, MAJOR, GPA, GPABASE, GRADUATIONYEAR, YEARS, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I) VALUES ( @APPLICANTNUMBER_I, @ISEQUENCENUMBER_I, @UNIVERSITY, @DEGREE, @MAJOR, @GPA, @GPABASE, @GRADUATIONYEAR, @YEARS, @NOTESINDEX_I, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2APP04SI] TO [DYNGRP]
GO
