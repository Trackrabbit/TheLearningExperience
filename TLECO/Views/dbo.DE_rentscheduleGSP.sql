SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE view [dbo].[DE_rentscheduleGSP]
as
SELECT [tle_Leasenum]
      ,[Year1] - 1 as num_count
      ,Schedulename
	  ,MIN(baserentamount)  value 
      ,MIN([Increase]) as Increase
	  ,ISNULL((CONVERT(decimal(18, 4),(MIN(Increase))) -  CONVERT(decimal (18,4),LAG(MIN(Increase)) Over (Partition by tle_Leasenum order by Year1)))/100,0) as rate
  FROM [dbo].[DE_GroundLease_LeaseReport_Detail_vw]
  where Schedulename Not like '1M%'
  group by [tle_Leasenum],Schedulename ,[Year1]
  --order by [tle_Leasenum],[Year1]
  --option (maxrecursion 300)


GO
GRANT SELECT ON  [dbo].[DE_rentscheduleGSP] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_rentscheduleGSP] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_rentscheduleGSP] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_rentscheduleGSP] TO [DYNGRP]
GO
