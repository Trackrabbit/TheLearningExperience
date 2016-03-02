SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUnreconciledTransactionBalance]  @I_dUserDate datetime = NULL,  @CheckbookID varchar(max)  as  set nocount on  select  @I_dUserDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dUserDate), @I_dUserDate) select  @I_dUserDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dUserDate), @I_dUserDate)   if @CheckbookID = ''  begin  select   CHEKBKID,   SUM(TRXAMNT) as TRXAMNT,  CheckBookIDDrillBack = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0) + dbo.dgppCheckbookID(1,CHEKBKID)   from CM20200 where Recond = 0  and TRXDATE <= @I_dUserDate  group by CHEKBKID  order by CHEKBKID  end else begin   select   CHEKBKID,   SUM(TRXAMNT) as TRXAMNT,  CheckBookIDDrillBack = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0) + dbo.dgppCheckbookID(1,CHEKBKID)   from CM20200 inner join (select * from dbo.seeSplitString(@CheckbookID, ',')) CheckbookList   on CM20200.CHEKBKID = CheckbookList.Value  where Recond = 0  and TRXDATE <= @I_dUserDate  group by CHEKBKID   order by CHEKBKID end    
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalance] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalance] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalance] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalance] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalance] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUnreconciledTransactionBalance] TO [rpt_power user]
GO
