SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40504SI] (@BARULEID int, @SQLCRTYP smallint, @SEQNUMBR int, @SQLCRTRIA char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY40504 (BARULEID, SQLCRTYP, SEQNUMBR, SQLCRTRIA) VALUES ( @BARULEID, @SQLCRTYP, @SEQNUMBR, @SQLCRTRIA) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40504SI] TO [DYNGRP]
GO