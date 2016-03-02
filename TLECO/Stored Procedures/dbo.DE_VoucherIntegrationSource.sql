SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

--exec DE_VoucherIntegrationSource 
--grant select on de_SchoolGpSiteXref to public
CREATE proc [dbo].[DE_VoucherIntegrationSource]
--with execute as 'tlecorp\theexperts' 
as

--declare @year1 char(4);
--set @year1=Convert(char(4),year(getdate()));
--declare @month char(20);
--set @month=Convert(char(2),Month(getdate()));

--Maria Carrero 2015-12-22, Changed the view de_SchoolGpSiteXref per de_SchoolGpSiteXref_New for sync the schools
declare @year1 char(4);
set @year1='2015';
declare @month char(20);
set @month='11';
IF OBJECT_ID('tempdb..##vouchertmp') IS NOT NULL
    DROP TABLE tempdb..##vouchertmp

select 
	id as VOUCHER_ID, [Customer Number]=LTRIM([Customer Number]),  
	DATEADD(ss, -1, DATEADD(month, DATEDIFF(month, 0, submitted), 0)) as submitted,
	CONVERT(date,submitted) as submittedAsReleased, 
	''  as batchid, 
	
	items,school_id ,LineDesc=dbo.de_UnCamelCase(items), 
	price= CONVERT(numeric(19,5),price),
	--price=CASE WHEN Items LIKE '%Fee' THEN CONVERT(numeric(19,5),price) 
	--								  ELSE CONVERT(numeric(19,5),0) END,
	Quantity=Convert(numeric(19,2),price)
	--Quantity=CASE WHEN Items LIKE '%Fee' THEN CONVERT(numeric(19,2),1) 
	--									 ELSE CONVERT(numeric(19,2),price) END
into ##vouchertmp 
FROM (
	--select * from tleco.dbo.rm00101 join 
	SELECT distinct
		V.[id]
		--,cf.[customer number]
		--,gpc.CUSTNMBR [customer number]
		--,Left(case when tle_franchiseeidname= 'null' then upper('CR-'+left(replace(replace(cr.tle_name,' ' ,''),',',''),6)) else upper('CR-'+replace(replace(cr.tle_name,' ',''),',','')) end,10)+'-2012' as [customer number]
		
		
		,(SELECT TOP 1 CUSTNMBR FROM de_VCHCENTERCUSTOMER WHERE  COMMENT2=s.school_id ) as [customer number]
		,s.school_id
		,s.period
		,s.year
		,s.submitted
		,s.approved
		,CONVERT(VARCHAR(50),[TotalGrossRevenue]) TotalTuition
		,CONVERT(VARCHAR(50),[AdvertisingFee])AdvertisingFee
		,CONVERT(VARCHAR(50),[Royalty]) RoyaltyFee
		,CONVERT(VARCHAR(50),[SoftwareFee]) SoftwareFee
		,CONVERT(VARCHAR(50),v.[LeaseAdminFee]) LeaseAdminFee
		,CONVERT(VARCHAR(50),[StaffCountFT]) StaffCountFT
		,CONVERT(VARCHAR(50),[StaffCountPT]) StaffCountPT
		,CONVERT(VARCHAR(50),[GrossPayroll]) GrossPayroll
		,CONVERT(VARCHAR(50),[PayrollPercentage]) PayrollPercentage
		,CONVERT(VARCHAR(50),[ProjectedEnrollment]) ProjectedEnrollment
		,CONVERT(VARCHAR(50),[TotalEnrollment]) TotalEnrollment
		,[TotalFees]
		,[PrivEnrollment]
		,[GovEnrollment]
		,[PaperCost]
		,[FoodCost]
		,[WorkingCapital],cr.tle_CenterTypeName as [School Type]
	FROM 
		[TLEFLSQL1].[MyTLE].[dbo].[vouchers] v JOIN 
		[TLEFLSQL1].[MyTLE].[dbo].[submissions] s ON v.id = s.voucher_id left JOIN 
		TLECO..CUSTOMERFEE cf 
			ON CONVERT(VARCHAR,s.school_id) = LEFT(CONVERT(VARCHAR,cf.CustomerKey),CHARINDEX('.',cf.CustomerKey)-1) and cf.[Customer Number] like 'CR-%' left join 
		de_SchoolGpSiteXref_New  xr on s.school_id=xr.[SCHOOL_ID] left join 
		[TLEFLSQL8.TLECORP.COM].tleco.dbo.gpcenter cr on xr.[GP_SITE_ID]=cr.tle_gpsite collate SQL_Latin1_General_CP1_CI_AS
		--left join RM00101 gpc on cr.tle_gpsite collate SQL_Latin1_General_CP1_CI_AS =gpc.ADRSCODE
	where 
		cr.statecodename = 'Active' and cr.statuscodename = 'Open' and 
		cf.[customer number] like '%2012%'
		and [year] = '2015'
		and period = '11'
--and 
--cr.statecodename='active'
--and [year] = @year1
--and period = @month
) main
--select * from [TLEFLSQL8.TLECORP.COM].tleco.dbo.gpcenter
UNPIVOT
	 (Price FOR Items IN ([AdvertisingFee],[RoyaltyFee],[SoftwareFee],[LeaseAdminFee],[StaffCountFT],[StaffCountPT],[GrossPayroll],[TotalTuition],[PayrollPercentage],[ProjectedEnrollment],[TotalEnrollment]))item
  ORDER BY [Customer Number], CASE WHEN Items LIKE '%Fee' THEN 0 ELSE 1 END

Select 
	VOUCHER_ID,[Customer Number],submitted,
	Case when c.tle_CenterTypeName='Managed'  then 'VCH_Managed' 
	when c.tle_CenterTypeName='Franchise' then  'VCH_FRANCHISE' else 'VCH_CORP' end as BatchID,
	Case when c.tle_CenterTypeName='Managed' or c.tle_CenterTypeName='Corporate' then  'CORP-'+Items else 'FRMG-'+Items end as Items,
	--Case when  c.tle_CenterTypeName='Managed' or c.tle_CenterTypeName='Corporate' then ROUND(Price, 2, 0) else 0 end as  Price,
	--Case when c.tle_CenterTypeName='Franchise' and LineDesc=' Total Tuition'
	
	-- then 0 
	--	when 
	-- when LineDesc=' Staff Count P T'  then 0 
	-- when LineDesc=' Staff Count F T'  then 0 
	-- when LineDesc=' Total Enrollment' then 0
	-- when LineDesc='  Projected Enrollment' then 0
	-- when LineDesc='  Payroll Percentage' then 0
	-- else
	--select * from iv00108 where IV00108.ITEMNMBR=v.Items and IV00108.UOFM='EA' and IV00108.PRCLEVEL='Default'
	ROUND(Price, 2, 0) * (select top 1 UOMPRICE from iv00108 where IV00108.ITEMNMBR=(Case when c.tle_CenterTypeName='Managed' or c.tle_CenterTypeName='Corporate' then  'CORP-'+Items else 'FRMG-'+Items end) and IV00108.UOFM='EA' and IV00108.PRCLEVEL='Default') as   Price, --select * from iv00108 where 
	ROUND(Price, 2, 0) Quantity,
	(select top 1 UOMPRICE from iv00108 where IV00108.ITEMNMBR=(Case when c.tle_CenterTypeName='Managed' or c.tle_CenterTypeName='Corporate' then  'CORP-'+Items else 'FRMG-'+Items end) ) UnitsS,
	school_id,--(c.tle_gpsite+'-'+LineDesc+'-'+c.tle_name) as 
	LineDesc,c.tle_gpsite,c.tle_name,c.statecodename,c.statuscodename,c.tle_CenterTypeName,submittedAsReleased
from 
	tempdb..##vouchertmp v join 
	[TLEFLSQL8.TLECORP.COM].tleco.dbo.gpcenter c on v.school_id=c.tle_school_id_for_voucher and  c.statuscodename='open' and c.statecodename='Active' 
order by tle_name 

  --select * from CRMcenter
  --SELECT * FROM GPcenter


  --Select * from TLECO..CUSTOMERFEE
  --select * from [TLEFLSQL1].[MyTLE].[dbo].[submissions]
  --select tle_centertypename,* from tleprod_mscrm..filteredtle_center


GO
GRANT EXECUTE ON  [dbo].[DE_VoucherIntegrationSource] TO [DYNGRP]
GO
