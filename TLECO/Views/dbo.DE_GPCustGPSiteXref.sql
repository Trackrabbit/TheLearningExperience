SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create view [dbo].[DE_GPCustGPSiteXref] as
Select S.tle_GPSite, C.CUSTNMBR
from [TLEFLSQL8.TLECORP.COM].[TLECO].[dbo].GPCenter S
	 join [TLECO].[dbo].RM00101 C
	 on C.ADRSCODE = S.tle_GPSite
COLLATE Latin1_General_CI_AI
GO
