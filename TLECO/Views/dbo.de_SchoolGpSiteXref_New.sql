SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE view [dbo].[de_SchoolGpSiteXref_New]
as
SELECT 
 distinct
      S.SCHOOL_ID
      ,SCH.GP_SITE_ID
  FROM  [TLEFLSQL1].[MyTLE].[dbo].SUBMISSIONS S
  JOIN  [TLEFLSQL1].[MyTLE].[dbo].VOUCHERS V
    ON S.VOUCHER_ID = V.ID
  JOIN SCHOOL_SYNC SCH
    ON S.SCHOOL_ID = SCH.SchoolKey
 WHERE S.SUBMISSION_TYPE_ID = 1


GO
GRANT SELECT ON  [dbo].[de_SchoolGpSiteXref_New] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[de_SchoolGpSiteXref_New] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[de_SchoolGpSiteXref_New] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[de_SchoolGpSiteXref_New] TO [DYNGRP]
GO
