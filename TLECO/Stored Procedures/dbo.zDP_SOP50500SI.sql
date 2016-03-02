SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50500SI] (@USERID char(15), @SEQNUMBR int, @PRCHLDID char(15), @Password_Required tinyint, @PASSWORD binary(16), @DUMYPSWD binary(16), @Password_Valid smallint, @MKTOPROC tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP50500 (USERID, SEQNUMBR, PRCHLDID, Password_Required, PASSWORD, DUMYPSWD, Password_Valid, MKTOPROC) VALUES ( @USERID, @SEQNUMBR, @PRCHLDID, @Password_Required, @PASSWORD, @DUMYPSWD, @Password_Valid, @MKTOPROC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50500SI] TO [DYNGRP]
GO
