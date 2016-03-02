SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  proc  [dbo].[aagGetAcctType]  @I_nAcctIdx int, @O_nAcctType int output  AS  select @O_nAcctType = ACCTTYPE from GL00100 where ACTINDX = @I_nAcctIdx    
GO
GRANT EXECUTE ON  [dbo].[aagGetAcctType] TO [DYNGRP]
GO
