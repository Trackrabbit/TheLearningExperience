SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80905SI] (@USERID char(15), @VCHRNMBR char(21), @DOCNUMBR char(21), @DOCTYPE smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM80905 (USERID, VCHRNMBR, DOCNUMBR, DOCTYPE) VALUES ( @USERID, @VCHRNMBR, @DOCNUMBR, @DOCTYPE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80905SI] TO [DYNGRP]
GO
