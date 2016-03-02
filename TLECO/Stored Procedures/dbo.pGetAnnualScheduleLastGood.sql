SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[pGetAnnualScheduleLastGood]
(
	@leaseId varchar(50)
)
AS
--Greg this was me (nando) I did this hack against my will! :/
(SELECT top 1 [tle_Leasenum]
      ,[Year1] - 1 as Year1
      ,Schedulename
      ,MIN([Rentsqfoot]) Rentsqfoot
      ,MIN([annualamaount]) annualamaount
      ,MIN([monthlyamount]) monthlyamount
      ,MIN([Increase]) as Increase
  FROM [dbo].[DE_GroundLease_LeaseReport_Detail_vw]
  where tle_Leasenum = @leaseId
  and Schedulename Not like '1M%'
  group by [tle_Leasenum],Schedulename ,[Year1]
)
UNION ALL
(SELECT [tle_Leasenum]
      ,[Year1] as Year1
      ,Schedulename
      ,MIN([Rentsqfoot]) Rentsqfoot
      ,MIN([annualamaount]) annualamaount
      ,MIN([monthlyamount]) monthlyamount
      ,MIN([Increase]) as Increase
  FROM [dbo].[DE_GroundLease_LeaseReport_Detail_vw]
  where tle_Leasenum = @leaseId
  and Schedulename Not like '1M%'
  group by [tle_Leasenum],Schedulename ,[Year1]
)
  order by [tle_Leasenum],[Year1]
  option (maxrecursion 300)
GO
GRANT EXECUTE ON  [dbo].[pGetAnnualScheduleLastGood] TO [DYNGRP]
GO
