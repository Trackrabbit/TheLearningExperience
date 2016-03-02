SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create function [dbo].[aagGetAccountType](@ACTINDX int) returns smallint  as begin declare @ACCTTYPE smallint select @ACCTTYPE  = isnull(ACCTTYPE,0) from GL00100 where ACTINDX = @ACTINDX return isnull(@ACCTTYPE,0) end    
GO
GRANT EXECUTE ON  [dbo].[aagGetAccountType] TO [DYNGRP]
GO
