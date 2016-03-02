SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcGetContractBillingMonths]   (@ENDDATE datetime,   @STARTDATE datetime,   @DIFF integer OUTPUT)  AS if DATEPART(dd,@STARTDATE) <= DATEPART(dd,@ENDDATE)  select @DIFF = DATEDIFF(mm,@STARTDATE,@ENDDATE) +1 else  select @DIFF = DATEDIFF(mm,@STARTDATE,@ENDDATE) return    
GO
GRANT EXECUTE ON  [dbo].[svcGetContractBillingMonths] TO [DYNGRP]
GO
