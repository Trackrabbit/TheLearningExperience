SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create View [dbo].[Vw_TestTLE]
as
Select * from TLETS.Dbo.Tbl_august
GO
GRANT SELECT ON  [dbo].[Vw_TestTLE] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[Vw_TestTLE] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[Vw_TestTLE] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[Vw_TestTLE] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[Vw_TestTLE] TO [public]
GO
