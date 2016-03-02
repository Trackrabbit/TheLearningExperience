SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLCashPostionKPIDetail]   @UserDate datetime = NULL as  SELECT   CurrentBalance, PreviousBalance, OrderingDate, Label FROM  GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 1)    
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPIDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPIDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPIDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPIDetail] TO [rpt_executive]
GO
