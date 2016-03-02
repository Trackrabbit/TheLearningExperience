SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTST022SI] (@EMPID_I char(15), @ISEQUENCENUMBER_I smallint, @TESTCODE_I char(7), @STRTDATE datetime, @TESTSCORE_I char(21), @NOTESINDEX_I numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @EXPNDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRTST022 (EMPID_I, ISEQUENCENUMBER_I, TESTCODE_I, STRTDATE, TESTSCORE_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, EXPNDATE) VALUES ( @EMPID_I, @ISEQUENCENUMBER_I, @TESTCODE_I, @STRTDATE, @TESTSCORE_I, @NOTESINDEX_I, @CHANGEBY_I, @CHANGEDATE_I, @EXPNDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTST022SI] TO [DYNGRP]
GO