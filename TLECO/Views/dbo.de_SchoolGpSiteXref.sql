SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[de_SchoolGpSiteXref]
as
SELECT 
 distinct
      [SCHOOL_ID]
      
      ,[GP_SITE_ID]
  FROM [TLEFLSQL1].[MyTLE].[dbo].[GP_VOUCHERS]
GO
GRANT SELECT ON  [dbo].[de_SchoolGpSiteXref] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[de_SchoolGpSiteXref] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[de_SchoolGpSiteXref] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[de_SchoolGpSiteXref] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[de_SchoolGpSiteXref] TO [public]
GO
