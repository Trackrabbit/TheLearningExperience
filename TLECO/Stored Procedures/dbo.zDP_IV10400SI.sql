SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10400SI] (@PRCGRPID char(31), @ITEMNMBR char(31), @SEQNUMBR int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV10400 (PRCGRPID, ITEMNMBR, SEQNUMBR) VALUES ( @PRCGRPID, @ITEMNMBR, @SEQNUMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10400SI] TO [DYNGRP]
GO
