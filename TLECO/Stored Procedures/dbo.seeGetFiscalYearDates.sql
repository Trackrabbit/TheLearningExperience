SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGetFiscalYearDates]  @I_dUserDate datetime = NULL as  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)  select * from SY40101 where @I_dUserDate >= FSTFSCDY and @I_dUserDate <= LSTFSCDY     
GO
GRANT EXECUTE ON  [dbo].[seeGetFiscalYearDates] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGetFiscalYearDates] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGetFiscalYearDates] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeGetFiscalYearDates] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGetFiscalYearDates] TO [rpt_collections manager]
GO
GRANT EXECUTE ON  [dbo].[seeGetFiscalYearDates] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeGetFiscalYearDates] TO [rpt_order processor]
GO
