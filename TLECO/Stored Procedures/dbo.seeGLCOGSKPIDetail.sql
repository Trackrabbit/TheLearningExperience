SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeGLCOGSKPIDetail]  @UserDate datetime AS SELECT   CurrentBalance,  PreviousBalance,  OrderingDate,  Label FROM  GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 33)   
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPIDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPIDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPIDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPIDetail] TO [rpt_executive]
GO
