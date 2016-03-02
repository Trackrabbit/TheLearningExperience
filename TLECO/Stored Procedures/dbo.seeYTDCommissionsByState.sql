SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[seeYTDCommissionsByState] @STATE  varchar(5) as  select       RM00301.SLPRSNID,      RM00301.SLPRSNFN,      RM00301.SPRSNSMN,      RM00301.SPRSNSLN,      case when rtrim(SLPRSNFN) = '' and rtrim(SPRSNSMN) = ''  and  rtrim(SPRSNSLN) = ''    then rtrim(SLPRSNID)    else      case       when rtrim(SPRSNSMN) = ''      then rtrim(SLPRSNFN) + ' ' + rtrim(SPRSNSLN)      else rtrim(SLPRSNFN) + ' ' + rtrim(SPRSNSMN) + ' ' + rtrim(SPRSNSLN)     end  end as SLSPRSNFULLNAME,      RM00301.CITY,      RM00301.STATE,      RM00301.COUNTRY,      RM00301.SALSTERR,      RM00301.TTLCOMTD,      ReceivablesTransactions.[Salesperson ID For Drillback]      from RM00301      join (select distinct([Salesperson ID For Drillback]), [Salesperson ID] from ReceivablesTransactions ) ReceivablesTransactions on RM00301.SLPRSNID = ReceivablesTransactions.[Salesperson ID]  where RM00301.STATE = @STATE          
GO
GRANT EXECUTE ON  [dbo].[seeYTDCommissionsByState] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeYTDCommissionsByState] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeYTDCommissionsByState] TO [rpt_power user]
GO
GRANT EXECUTE ON  [dbo].[seeYTDCommissionsByState] TO [rpt_sales manager]
GO
