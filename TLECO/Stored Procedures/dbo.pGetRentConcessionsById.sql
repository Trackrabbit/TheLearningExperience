SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[pGetRentConcessionsById]
(
  @leasenum as nvarchar(100)
)
AS
select tle_leasenum, schedulename[month], Increase[Percentage], monthlyamount 
  FROM [dbo].[DE_GroundLease_LeaseReport_Detail_vw]
  where tle_Leasenum = @leasenum
  and Schedulename like '1M%'
  group by [tle_Leasenum],Schedulename ,[Year1],increase, monthlyamount,  tle_termstartd 
  order by [tle_Leasenum],[Year1], tle_termstartd
  option (maxrecursion 300)
GO
GRANT EXECUTE ON  [dbo].[pGetRentConcessionsById] TO [DYNGRP]
GO
