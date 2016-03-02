SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE view [dbo].[DE_GroundLease_LeaseReport_Concession_vw]
AS
select tle_leasenum,
 tle_leaseid,
right(Schedulename, 2) as Month, 
tle_pctcbaseamount as Percentage, 
ISNULL(((((tle_baseamountc * tle_SquareFootage) *  (tle_pctcbaseamount))/100)/12),0) as  monthlyamount 
from [DE_GroundLease_LeaseReport_vw]
where Schedulename like 'Concession%'


GO
GRANT SELECT ON  [dbo].[DE_GroundLease_LeaseReport_Concession_vw] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_GroundLease_LeaseReport_Concession_vw] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_GroundLease_LeaseReport_Concession_vw] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_GroundLease_LeaseReport_Concession_vw] TO [DYNGRP]
GO
