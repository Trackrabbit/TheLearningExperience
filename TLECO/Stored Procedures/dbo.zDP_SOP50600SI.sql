SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50600SI] (@USERID char(15), @SEQNUMBR int, @DOCID char(15), @Password_Required tinyint, @PASSWORD binary(16), @DUMYPSWD binary(16), @Password_Valid smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP50600 (USERID, SEQNUMBR, DOCID, Password_Required, PASSWORD, DUMYPSWD, Password_Valid) VALUES ( @USERID, @SEQNUMBR, @DOCID, @Password_Required, @PASSWORD, @DUMYPSWD, @Password_Valid) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50600SI] TO [DYNGRP]
GO
