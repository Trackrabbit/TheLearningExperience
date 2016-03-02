SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Count_XFR_Items](@ORDDOCID char(15),   @TRANSLINESEQ integer,   @STATUS smallint,  @Count integer output) as select @Count =  isnull(SUM(SERLTQTY),0) from SVC00702   where ORDDOCID = @ORDDOCID and TRANSLINESEQ = @TRANSLINESEQ and STATUS = @STATUS    
GO
GRANT EXECUTE ON  [dbo].[SVC_Count_XFR_Items] TO [DYNGRP]
GO
