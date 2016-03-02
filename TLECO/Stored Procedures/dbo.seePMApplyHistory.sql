SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seePMApplyHistory]  @SORTBY char(15),       @i_BACHNUMB_RS char(17) = '',    @i_BACHNUMB_RE char(17) = '',    @i_VENDORID_RS char(21) = '',    @i_VENDORID_RE char(21) = '',    @i_DOCNUMBR_RS char(65) = '',    @i_DOCNUMBR_RE char(65) = ''     as  set nocount on   select a.VENDORID, a.VCHRNMBR, a.DOCNUMBR, a.DOCDATE, a.DOCAMNT, b.VCHRNMBR as PYMTVCHR,   case when b.DOCTYPE = 6 then 'Payment'  when b.DOCTYPE = 5 then 'Credit Memo'  when b.DOCTYPE = 7 then 'Scheduled Payment'  else '' end as DOCTYPE,   b.APFRDCNM, b.DOCDATE as APPLYDATE, b.APFRMAPLYAMT  from PM30200 as a inner join PM30300 as b on  a.VENDORID = b.VENDORID and  a.VCHRNMBR = b.APTVCHNM and  a.DOCNUMBR = b.APTODCNM   where a.BACHNUMB between @i_BACHNUMB_RS and @i_BACHNUMB_RE and  a.VENDORID between @i_VENDORID_RS and @i_VENDORID_RE and  a.DOCNUMBR between @i_DOCNUMBR_RS and @i_DOCNUMBR_RE and  a.VOIDED = 0  order by a.VENDORID set nocount off     
GO
GRANT EXECUTE ON  [dbo].[seePMApplyHistory] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seePMApplyHistory] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seePMApplyHistory] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seePMApplyHistory] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seePMApplyHistory] TO [rpt_power user]
GO
