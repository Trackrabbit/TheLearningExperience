SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec DE_Pre_enrollment_LoadCube_sp

CREATE  procedure [dbo].[DE_Pre_enrollment_LoadCube_sp] as



/*
CREATED BY        :	Dynamics Expert
CREATED ON        :	12/01/2014
PURPOSE           : Loads the CRM datamart 
USAGE             : runs daily
ERROR CODES       : no errors are expected

MODIFICATIONS     :
    Dynamics Expert	12/21/2014	Added Documentation

	06/02/2015  - Added 5 columns to DE_DimLeads.
	              Updated SP to move data from leadbase to DE_DimLeads.
				  Insert into DE_DimLead, Lines 415-419, 486-490
                              
				  Columns: tle_utm_campaign, tle_utm_content,
				           tle_utm_medium, tle_utm_source, tle_utm_term 
*/



 ------------------------
 ---begin
 ------------------------

DECLARE @UNIQUEX UNIQUEIDENTIFIER
SET @UNIQUEX = NEWID();


truncate table [TLECO].[dbo].[DE_FactPre_enrollment]
-----------------------------------
----- Last Acvtivity 
----------------------------------
IF OBJECT_ID('tempdb..#LastAcvtivity') IS NOT NULL
    DROP TABLE #LastAcvtivity

select regardingobjectid,isnull(modifiedon.[SK_Date],-1)  modifiedon, modifiedbyname, activitytypecodename, rn
into #LastAcvtivity
from (
select Activity.regardingobjectid, Activity.modifiedon, Activity.modifiedbyname, Activity.activitytypecodename, 
row_number() over (partition by Activity.regardingobjectid order by Activity.modifiedon desc) as rn
FROM 
[TLEPROD_MSCRM].[dbo].[FilteredLead]  FL 
left outer join   [TLEPROD_MSCRM].[dbo].[FilteredActivityPointer] Activity on Activity.regardingobjectid = FL.LeadID
) m2
left outer join [dbo].[DE_DimDate] modifiedon on modifiedon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,m2.modifiedon))
where m2.rn = 1 and regardingobjectid is not null


 ------------------------
 --- DE_DimStatus
 ------------------------



truncate table [dbo].[DE_DimStatus]

SET IDENTITY_INSERT [dbo].[DE_DimStatus] on

INSERT INTO [dbo].[DE_DimStatus]
           ([Status_pk],[StatusDesc])
SELECT  -1 as [Status_pk],  'unknown' AS statuscodename

SET IDENTITY_INSERT [dbo].[DE_DimStatus]  off

INSERT INTO [dbo].[DE_DimStatus]
           ([StatusDesc])

--select * from [TLEPROD_MSCRM].dbo.filteredOpportunity
SELECT DISTINCT  ISNULL(statuscodename COLLATE DATABASE_DEFAULT, 'unknown') AS statuscodename
FROM             [TLEPROD_MSCRM].dbo.filteredLead
UNION
SELECT DISTINCT  ISNULL(statuscodename COLLATE DATABASE_DEFAULT, 'unknown') AS statuscodename
FROM            [TLEPROD_MSCRM].dbo.filteredOpportunity
WHERE        (statuscode <> - 1)
UNION
SELECT DISTINCT tle_pe_statusname  statuscodename
FROM    [TLEPROD_MSCRM].dbo.Filteredtle_child
--WHERE      [tle_pe_status_desc] is not null



--  select * from [dbo].[DE_DimStatus]


 ------------------------
 --- DE_DimCenter
 ------------------------

IF (OBJECT_ID('FK_DE_FactPre_enrollment_DE_DimCenter', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [dbo].[DE_FactPre_enrollment]  DROP  CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimCenter] 
END

truncate table [TLECO].[dbo].[DE_DimCenter]

SET IDENTITY_INSERT [TLECO].[dbo].[DE_DimCenter] on

INSERT INTO [dbo].[DE_DimCenter]
([centerid_pk]
,[tle_centerid]
,[tle_name]
,[tle_state]
,[tle_stateidname]
,[tle_city]
,[tle_ownershiptypename]
,[tle_acceptsworkandfamily]
,[tle_acceptsworkandfamilyname]
,[tle_businessmanageridname]
,[tle_businessmanageridyominame]
,[tle_centertype]
,[tle_centertypename]
,[tle_countryidname]
,[tle_countyidname]
,[tle_emailaddress1]
,[tle_fax]
,[tle_final]
,[tle_finalutc]
,[tle_foundation]
,[tle_foundationutc]
,[tle_frame]
,[tle_frameutc]
,[tle_franchiseeidname]
,[tle_isacceptspreenrollment]
,[tle_isacceptspreenrollmentname]
,[tle_landlordidname]
,[tle_landlordidyominame]
,[tle_lastinspectionon]
,[tle_lastinspectiononutc]
,[tle_leasedate]
,[tle_leasedateutc]
,[tle_leasenumber]
,[tle_locationdescription]
,[tle_maincenterididname]
,[tle_outlook]
,[tle_postalcode]
,[tle_preenrollmentfee]
,[tle_preenrollmentfee_base]
,[tle_squarefootage]
,[tle_telephone1]
,[tle_townsiteplanapproval]
,[tle_townsiteplanapprovalutc]
,[createdon]
,[statecode]
,[statecodename]
,[statuscode]
,[statuscodename]
,tle_ActualOpenDate
)

select top 1 
[centerid_pk] =-1
,[tle_centerid] = null
,[tle_name] = null
,[tle_state] = null
,[tle_stateidname] = null
,[tle_city] = null
,[tle_ownershiptypename] = null
,[tle_acceptsworkandfamily] = null
,[tle_acceptsworkandfamilyname] = null
,[tle_businessmanageridname] = null
,[tle_businessmanageridyominame] = null
,[tle_centertype] = null
,[tle_centertypename] = null
,[tle_countryidname] = null
,[tle_countyidname] = null
,[tle_emailaddress1] = null
,[tle_fax] = null
,[tle_final] = null
,[tle_finalutc] = null
,[tle_foundation] = null
,[tle_foundationutc] = null
,[tle_frame] = null
,[tle_frameutc] = null
,[tle_franchiseeidname] = null
,[tle_isacceptspreenrollment] = null
,[tle_isacceptspreenrollmentname] = null
,[tle_landlordidname] = null
,[tle_landlordidyominame] = null
,[tle_lastinspectionon] = null
,[tle_lastinspectiononutc] = null
,[tle_leasedate] = null
,[tle_leasedateutc] = null
,[tle_leasenumber] = null
,[tle_locationdescription] = null
,[tle_maincenterididname] = null
,[tle_outlook] = null
,[tle_postalcode] = null
,[tle_preenrollmentfee] = null
,[tle_preenrollmentfee_base] = null
,[tle_squarefootage] = null
,[tle_telephone1] = null
,[tle_townsiteplanapproval] = null
,[tle_townsiteplanapprovalutc] = null
,[createdon] = null
,[statecode] = -1
,[statecodename] = 'unknown' 
,[statuscode] = -1 
,[statuscodename] = 'unknown' 
,tle_ActualOpenDate = null
FROM [TLEPROD_MSCRM].[dbo].[Filteredtle_center]

ALTER TABLE [dbo].[DE_FactPre_enrollment]  WITH CHECK ADD  CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimCenter] FOREIGN KEY(centerid_pk)
REFERENCES [dbo].[DE_DimCenter] ([centerid_pk])

SET IDENTITY_INSERT [TLECO].[dbo].[DE_DimCenter] off


INSERT INTO [TLECO].[dbo].[DE_DimCenter]
([tle_centerid]
,[tle_name]
,[tle_state]
,[tle_stateidname]
,[tle_city]
,[tle_ownershiptypename]
,[tle_acceptsworkandfamily]
,[tle_acceptsworkandfamilyname]
,[tle_businessmanageridname]
,[tle_businessmanageridyominame]
,[tle_centertype]
,[tle_centertypename]
,[tle_countryidname]
,[tle_countyidname]
,[tle_emailaddress1]
,[tle_fax]
,[tle_final]
,[tle_finalutc]
,[tle_foundation]
,[tle_foundationutc]
,[tle_frame]
,[tle_frameutc]
,[tle_franchiseeidname]
,[tle_isacceptspreenrollment]
,[tle_isacceptspreenrollmentname]
,[tle_landlordidname]
,[tle_landlordidyominame]
,[tle_lastinspectionon]
,[tle_lastinspectiononutc]
,[tle_leasedate]
,[tle_leasedateutc]
,[tle_leasenumber]
,[tle_locationdescription]
,[tle_maincenterididname]
,[tle_outlook]
,[tle_postalcode]
,[tle_preenrollmentfee]
,[tle_preenrollmentfee_base]
,[tle_squarefootage]
,[tle_telephone1]
,[tle_townsiteplanapproval]
,[tle_townsiteplanapprovalutc]
,[createdon]
,[statecode]
,[statecodename]
,[statuscode]
,[statuscodename]
,tle_ActualOpenDate
)

SELECT
FC.[tle_centerid]
,FC.[tle_name]
,[tle_state] = sb.tle_Abbreviation
,[tle_stateidname]
,[tle_city]
,[tle_ownershiptypename]
,[tle_acceptsworkandfamily]
,[tle_acceptsworkandfamilyname]
,[tle_businessmanageridname]
,[tle_businessmanageridyominame]
,[tle_centertype]
,[tle_centertypename]
,[tle_countryidname]
,[tle_countyidname]
,[tle_emailaddress1]
,[tle_fax]
,[tle_final]
,[tle_finalutc]
,[tle_foundation]
,[tle_foundationutc]
,[tle_frame]
,[tle_frameutc]
,[tle_franchiseeidname]
,[tle_isacceptspreenrollment]
,[tle_isacceptspreenrollmentname]
,[tle_landlordidname]
,[tle_landlordidyominame]
,[tle_lastinspectionon]
,[tle_lastinspectiononutc]
,[tle_leasedate]
,[tle_leasedateutc]
,[tle_leasenumber]
,[tle_locationdescription]
,[tle_maincenterididname]
,[tle_outlook]
,[tle_postalcode]
,[tle_preenrollmentfee]
,[tle_preenrollmentfee_base]
,[tle_squarefootage]
,[tle_telephone1]
,[tle_townsiteplanapproval]
,[tle_townsiteplanapprovalutc]
,FC.[createdon]
,FC.[statecode]
,FC.[statecodename]
,FC.[statuscode]
,FC.[statuscodename]
,FC.tle_ActualOpenDate
FROM [TLEPROD_MSCRM].[dbo].[Filteredtle_center] FC
left outer join  [TLEPROD_MSCRM].[dbo].tle_statebase sb  on sb.tle_StateId = FC.tle_StateId
where
FC.statuscodename<>'closed'


 ------------------------
 --- DE_DimLead
 ------------------------

IF (OBJECT_ID('FK_DE_FactPre_enrollment_DE_DimLead', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [dbo].[DE_FactPre_enrollment]   DROP  CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimLead]
END

truncate table  [TLECO].[dbo].[DE_DimLead]

SET IDENTITY_INSERT [TLECO].[dbo].[DE_DimLead]  on



ALTER TABLE [dbo].[DE_FactPre_enrollment]  WITH CHECK ADD  CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimLead] FOREIGN KEY([leadid_pk])
REFERENCES [dbo].[DE_DimLead] ([leadid_pk])

ALTER TABLE [dbo].[DE_FactPre_enrollment] CHECK CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimLead]

SET IDENTITY_INSERT [TLECO].[dbo].[DE_DimLead]  off

INSERT INTO [TLECO].[dbo].[DE_DimLead]
([leadid]
,[tle_centerid]
,[tle_centeridname]
,[fullname]
,[firstname]
,[middlename]
,[lastname]
,[jobtitle]
,[address1_line1]
,[address1_line2]
,[address1_line3]
,[address1_city]
,[address1_stateorprovince]
,[address1_postalcode]
,[address1_county]
,[address1_country]
,[address1_composite]
,[tle_primaryphone]
,[address1_telephone1]
,[mobilephone]
,[telephone1]
,[telephone2]
,[telephone3]
,[companyname]
,[leadqualitycode]
,[leadqualitycodename]
,[tle_isworkandfamilylead]
,[tle_preenrollpaymentamount]
,[tle_preenrollpaymtreceivedon]
,[tle_preenrollpaymtreceivedonutc]
,[accountid]
,[accountiddsc]
,[accountidname]
,[statecode]
,[statecodename]
,[statuscode]
,[statuscodename]
,[tle_expectedstartdate]
,[tle_firstcontactdate]
,[new_firstcontactdate]
,[modifiedon]
,[createdon]
,[tle_AreaofInterest]
,[tle_leadtypename]
,[tle_lastapptdate]
,[tle_initialcontacton]
,[tle_referredby]
,[owneridname]
,leadsourcecodename
,tle_legacyoriginalleadsource
,[tle_loi_ready_date]
,[tle_loi_sent_date]
,[tle_loi_signed_date]
,[tle_site_approved_date]
,[tle_developerapprovedon]
,[tle_qqapprovedon]
,[tle_fddreceived]
,[tle_fddsent]
,[tle_closingdocssent]
,[tle_closingdocssigned]
,[estimatedclosedate]
,[tle_leadnumber] 
,campaignidname
,TLE_WebSource
,tle_utm_campaign
,tle_utm_content
,tle_utm_medium
,tle_utm_source
,tle_utm_term 
)
SELECT
FL.[leadid]
,FL.[tle_centerid]
,isnull([tle_centeridname],'unknown') tle_centeridname
,FL.[fullname]
,FL.[firstname]
,FL.[middlename]
,FL.[lastname]
,FL.[jobtitle]
,[address1_line1]
,[address1_line2]
,[address1_line3]
,[address1_city] = isnull(isnull([tle_cityname],  [address1_city]),'unknown')
,[address1_stateorprovince] = isnull([StateID_sk],'un')
,[address1_postalcode]
,[address1_county]
,[address1_country]
,[address1_composite]
,FL.[tle_primaryphone]
,[address1_telephone1]
,FL.[mobilephone]
,FL.[telephone1]
,FL.[telephone2]
,FL.[telephone3]
,FL.[companyname]
,FL.[leadqualitycode]
,[leadqualitycodename]
,FL.[tle_isworkandfamilylead]
,FL.[tle_preenrollpaymentamount]
,FL.[tle_preenrollpaymtreceivedon]
,[tle_preenrollpaymtreceivedonutc]
,[accountid]
,[accountiddsc]
,[accountidname]
,FL.[statecode]
,[statecodename]
,[statuscode] = isnull((select [Status_pk] from [dbo].[DE_DimStatus] [Status] where [Status].[StatusDesc] COLLATE DATABASE_DEFAULT = FL.statuscodename COLLATE DATABASE_DEFAULT),-1)
,[statuscodename]
,convert(char(10),FL.[tle_expectedstartdate],101)
,convert(char(10),FL.[tle_firstcontactdate]	,101)
,convert(char(10),FL.[new_firstcontactdate]	,101)
,convert(char(10),FL.[modifiedon],101)
,isnull(FL.tle_originalenteredon,FL.[createdon]) [createdon]
,FL.[tle_AreaofInterest]
,FL.[tle_leadtypename]
,FL.[tle_lastapptdate]
,FL.[tle_initialcontacton]
,FL.[tle_referredby]
,FL.[owneridname]
,leadsourcecodename
,FL.tle_legacyoriginalleadsource
,convert(char(10),FL.[tle_loi_ready_date]     ,101)
,convert(char(10),FL.[tle_loi_sent_date]	  ,101)
,convert(char(10),FL.[tle_loi_signed_date]	  ,101)
,convert(char(10),FL.[tle_site_approved_date] ,101)
,convert(char(10),FL.[tle_developerapprovedon],101)
,convert(char(10),FL.[tle_qqapprovedon]      ,101)
,convert(char(10),FL.[tle_fddreceived]		 ,101)
,convert(char(10),FL.[tle_fddsent]			 ,101)
,convert(char(10),FL.[tle_closingdocssent]	 ,101)
,convert(char(10),FL.[tle_closingdocssigned] ,101)
,convert(char(10),FL.[estimatedclosedate]	 ,101)
,FL.[tle_leadnumber] 
,FL.campaignidname,
fl.tle_webleadsource
,LB.tle_utm_campaign
,LB.tle_utm_content
,LB.tle_utm_medium
,LB.tle_utm_source
,LB.tle_utm_term 
FROM  [TLEPROD_MSCRM].[dbo].[FilteredLead]  FL
inner join [TLEPROD_MSCRM].[dbo].[LeadBase] LB on LB.[LeadId] = FL.[LeadId]
left outer join  [TLEPROD_MSCRM].[dbo].tle_statebase sb  on sb.tle_StateId = FL.tle_State
left outer join [dbo].[DE_DimState]  DS on DS.StateID_sk  collate DATABASE_DEFAULT 
 = tle_Abbreviation  collate DATABASE_DEFAULT 


 ------------------------
 --- DE_DimLeadType
 ------------------------

truncate table [dbo].[DE_DimLeadType]

INSERT INTO [dbo].[DE_DimLeadType]
    ([leadtype_pk]
    ,[leadtypename])

select distinct FL.tle_leadtype, FL.tle_leadtypename
FROM  [TLEPROD_MSCRM].[dbo].[FilteredLead]  FL where FL.tle_leadtype is not null 

union 

select -1 tle_leadtype, 'unknown' tle_leadtypename


 ------------------------
 --- DE_DimCampaign
 ------------------------

 truncate table [dbo].[DE_DimCampaign]

 SET IDENTITY_INSERT [dbo].[DE_DimCampaign] on

 INSERT INTO [dbo].[DE_DimCampaign]
([CampaignId_pk]
,[CampaignId]
,[Name])

select 
-1 [CampaignId_pk]
,@UNIQUEX [CampaignId]
,'unknown' [Name]


 SET IDENTITY_INSERT [dbo].[DE_DimCampaign] off

INSERT INTO [dbo].[DE_DimCampaign]
([CampaignId]
,[Name])

select 
[CampaignId]
,[Name]
from
[TLEPROD_MSCRM].[dbo].[CampaignBase] s


 ------------------------
 --- DE_FactCampaign
 ------------------------

 truncate table [dbo].[DE_FactCampaign]

INSERT INTO [dbo].[DE_FactCampaign]
(CampaignId_pk
,[CampaignId]
,[Budget]
,[Cost])

select 
d.CampaignId_pk
,s.[CampaignId]
,BudgetedCost [Budget]
,TotalCampaignActivityActualCost [Cost]
from
[TLEPROD_MSCRM].[dbo].[CampaignBase] s
inner join [dbo].[DE_DimCampaign] d on d.[CampaignId] = s.[CampaignId]


 ------------------------
 --- DE_DimChild
 ------------------------


IF (OBJECT_ID('FK_DE_FactPre_enrollment_DE_DimChild', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [dbo].[DE_FactPre_enrollment]  DROP  CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimChild]
END

truncate table  [TLECO].[dbo].[DE_DimChild]

SET IDENTITY_INSERT [TLECO].[dbo].[DE_DimChild]  on

INSERT INTO [TLECO].[dbo].[DE_DimChild]
([childid_pk]
,[tle_leadid]
,[tle_childid]
,[tle_dob]
,[tle_programname]
,[tle_name]
,[tle_pe_status]
,[tle_pe_status_desc]
,statecodename
,statuscodename)

select top 1 
 [childid_pk] = -1
 ,[tle_leadid] = null
 ,tle_childid  = null
 ,tle_dob  = null
 ,tle_programname  = null
 ,tle_name  = null
 ,[tle_pe_status]  = -1
,[tle_pe_status_desc] = null
,statecodename = null
,statuscodename = null
 from
  [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH 
where 
 [tle_leadid] is not null
 and tle_name is not null



ALTER TABLE [dbo].[DE_FactPre_enrollment]  WITH CHECK ADD  CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimChild] FOREIGN KEY([childid_pk])
REFERENCES [dbo].[DE_DimChild] ([childid_pk])

ALTER TABLE [dbo].[DE_FactPre_enrollment] CHECK CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimChild]

SET IDENTITY_INSERT [TLECO].[dbo].[DE_DimChild]  off

INSERT INTO [TLECO].[dbo].[DE_DimChild]
([tle_leadid]
,[tle_childid]
,[tle_dob]
,[tle_programname]
,[tle_name]
,[tle_pe_status] 
,[tle_pe_status_desc]
,statecodename
,statuscodename)

select 
[tle_leadid]
,tle_childid
,tle_dob
,tle_programname
,tle_name
,[tle_pe_status]  = isnull((select [Status_pk] from [dbo].[DE_DimStatus] [Status] where [Status].[StatusDesc] COLLATE DATABASE_DEFAULT = 
case 
when  [tle_pe_status] =  854390001 then 'Enrolled' 
when [tle_pe_status] =  854390002 then 'Refunded' 
Else 'Active' End COLLATE DATABASE_DEFAULT),-1)

,[tle_pe_status_desc] =
case 
when  [tle_pe_status] =  854390001 then 'Enrolled' 
when [tle_pe_status] =  854390002 then 'Refunded' 
Else 'Active' End
,statecodename
,statuscodename
from
  [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH 
where 
 [tle_leadid] is not null
 --and statecodename = 'Active'
 --and statuscodename = 'Active'

  ------------------------
 --- update Region for State
 ------------------------
 truncate table DE_DimState
 INSERT INTO [dbo].[DE_DimState]
           ([StateID_pk]
           ,[StateID_sk]
           ,[StateName]
           ,[Region]
           ,[Capital]
           ,[LargestCity]
           ,[Population_2013])
     VALUES
           (-1,'UN','Unknown','Unknown','Unknown','Unknown',0)

 INSERT INTO [dbo].[DE_DimState]
           ([StateID_pk]
           ,[StateID_sk]
           ,[StateName]
           ,[Region]
           ,[Capital]
           ,[LargestCity]
           ,[Population_2013])
   (select SCHOOL_State_ID,SCHOOL_STATE_NAME,SCHOOL_STATE_NAME,SCHOOL_Region_Name,'','',0 from
 [TLEFLSQL1\CCMSERVER].[DataWarehouse].[dbo].[LU_SCHOOL_STATE] st  
inner join [TLEFLSQL1\CCMSERVER].[DataWarehouse].[dbo].[LU_SCHOOL_REGION] re on re.[SCHOOL_REGION_ID] = st.[SCHOOL_REGION_ID])



 update ds
set [Region] = [SCHOOL_REGION_NAME]
from
[dbo].[DE_DimState] ds
inner join [TLEFLSQL1\CCMSERVER].[DataWarehouse].[dbo].[LU_SCHOOL_STATE] st on st.[SCHOOL_STATE_NAME] = ds.[StateID_sk]
inner join [TLEFLSQL1\CCMSERVER].[DataWarehouse].[dbo].[LU_SCHOOL_REGION] re on re.[SCHOOL_REGION_ID] = st.[SCHOOL_REGION_ID] 
where
[Region] <> [SCHOOL_REGION_NAME]



-----------------------------------
----- Franchise Opportunity
----------------------------------

--DECLARE @UNIQUEX UNIQUEIDENTIFIER
--SET @UNIQUEX = NEWID();


truncate table [dbo].[DE_DimOpportunity]

SET IDENTITY_INSERT  [dbo].[DE_DimOpportunity]  on

INSERT INTO [dbo].[DE_DimOpportunity]
([opportunityid_pk]
,[opportunityid]
,[statecode]
,[statecodename]
,[statuscode]
,[statuscodename]
,[campaignid]
,[completefinalproposalname]
,[contactid]
,[contactidname]
,[createdbyname]
,[createdon]
,[customeridname]
,[decisionmakername]
,[description]
,[name]
,[need]
,[needname]
,[opportunityratingcode]
,[opportunityratingcodename]
,[originatingleadid]
,[owneridname]
,[stepname]
,[tle_centerid]
,[tle_interestname]
,[tle_typename]
,refundamount
,refundprocessedon
,estimatedclosedate
,actualclosedate
,tle_closingdocssent
,tle_fddreceived
,tle_fddsent
,tle_matchdate
,[tle_sitebookapprovedon]
,[tle_sitebookcompletedon]
,[tle_sitebookfinalreviewon]
,tle_lease_request_form_date
)

SELECT  top 1 
-1 [opportunityid_pk]
,@UNIQUEX [opportunityid]
,-1 [statecode]
,'unknown' [statecodename]
,-1 [statuscode]
,'unknown' [statuscodename]
,@UNIQUEX [campaignid]
,'unknown' [completefinalproposalname]
,@UNIQUEX [contactid]
,'unknown' [contactidname]
,'unknown' [createdbyname]
, [createdon] = null
,'unknown' [customeridname]
,'unknown' [decisionmakername]
,'unknown' [description]
,'unknown' [name]
,-1 [need]
,'unknown' [needname]
,-1 [opportunityratingcode]
,'unknown' [opportunityratingcodename]
,@UNIQUEX [originatingleadid]
,'unknown' [owneridname]
,'unknown' [stepname]
,@UNIQUEX [tle_centerid]
,'unknown' [tle_interestname]
,'unknown' [tle_typename]
,0 tle_refundamount
,tle_refundprocessedon = null
,estimatedclosedate  = null
,actualclosedate = null
,tle_closingdocssent  = null
,tle_fddreceived  = null
,tle_fddsent  = null
,tle_matchdate = null
,[tle_sitebookapprovedon] = null
,[tle_sitebookcompletedon] = null
,[tle_sitebookfinalreviewon] = null
,tle_lease_request_form_date = null
FROM [TLEPROD_MSCRM].[dbo].[FilteredOpportunity]

SET IDENTITY_INSERT  [dbo].[DE_DimOpportunity]  off

INSERT INTO [dbo].[DE_DimOpportunity]
([opportunityid]
,[statecode]
,[statecodename]
,[statuscode]
,[statuscodename]
,[campaignid]
,[completefinalproposalname]
,[contactid]
,[contactidname]
,[createdbyname]
,[createdon]
,[customeridname]
,[decisionmakername]
,[description]
,[name]
,[need]
,[needname]
,[opportunityratingcode]
,[opportunityratingcodename]
,[originatingleadid]
,[owneridname]
,[stepname]
,[tle_centerid]
,[tle_interestname]
,[tle_typename]
,refundamount
,refundprocessedon
,estimatedclosedate
,actualclosedate
,tle_closingdocssent
,tle_fddreceived
,tle_fddsent
,tle_matchdate
,[tle_sitebookapprovedon]
,[tle_sitebookcompletedon]
,[tle_sitebookfinalreviewon]
,tle_lease_request_form_date
,TLE_OpportunityFirstContactDate
,TLE_opportunityCreatedDate 
)

SELECT  
[opportunityid]
,isnull(OP.[statecode],-1) [statecode]
,isnull(OP.[statecodename],'unknown')  [statecodename]
,[statuscode] = isnull((select [Status_pk] from [dbo].[DE_DimStatus] [Status] where [Status].[StatusDesc] COLLATE DATABASE_DEFAULT = OP.statuscodename COLLATE DATABASE_DEFAULT),-1)
,isnull(OP.[statuscodename],'unknown')  [statuscodename]
,[campaignid]
,[completefinalproposalname]
,OP.[contactid]
,[contactidname]
,OP.[createdbyname]
,convert(char(10),OP.[createdon],101)
,[customeridname]
,[decisionmakername]
,OP.[description]
,[name]
,[need]
,[needname]
,[opportunityratingcode]
,[opportunityratingcodename]
,OP.[originatingleadid]
,OP.[owneridname]
,[stepname]
,OP.[tle_centerid]
,[tle_interestname]
,[tle_typename]
,tle_refundamount
,tle_refundprocessedon
,convert(char(10),estimatedclosedate ,101)
,convert(char(10),actualclosedate	 ,101)
,convert(char(10),tle_closingdocssent,101)
,convert(char(10),tle_fddreceived	 ,101)
,convert(char(10),tle_fddsent		 ,101)
,tle_matchdate
,[tle_sitebookapprovedon]
,[tle_sitebookcompletedon]
,[tle_sitebookfinalreviewon]
,tle_lease_request_form_date
,'' TLE_OpportunityFirstContactDate
,'' TLE_opportunityCreatedDate
FROM [TLEPROD_MSCRM].[dbo].[FilteredOpportunity] OP
left outer join [TLEPROD_MSCRM].[dbo].[FilteredContact] CO on CO.[contactid] = OP.[contactid] 
where
tle_typename = 'Franchise Sales'


 ------------------------
 --- fact table 
 ------------------------

truncate table [TLECO].[dbo].[DE_FactPre_enrollment]

INSERT INTO [dbo].[DE_FactPre_enrollment]
([centerid_pk]
,[childid_pk]
,[leadid_pk]
,leadtype_pk
,[CampaignId_pk]
,Opportunityid_pk
,[owneridname]
,[tle_referredby]
,[tle_areaofinterest]
,[estimatedclosedate]
,[Lease_leasedate]
,[tle_lastcontacton]
,[center_createdon]
,[Lead_expectedstartdate]
,[Lead_preenrollpaymtreceivedon]
,[Lead_createdon]
,Opportunity_Createon
,[Lead_modifiedon]
,[tle_lastapptdate]
,[tle_initialcontacton]
,ActualOpenDate
,[LeadDisqualifiedDate]
,RefundProcessedOnDate
,[LastActivityDate]
,Opportunity_actualclosedatedate
,Opportunity_closingdocssentdate
,Opportunity_fddreceiveddate
,Opportunity_fddsentdate

,[tle_sitebookapprovedon]
,[tle_sitebookcompletedon]
,[tle_sitebookfinalreviewon]
,[tle_leasedate]
,[tle_loi_ready_date]
,[tle_loi_sent_date]
,[tle_loi_signed_date]
,[tle_site_approved_date]
,[tle_developerapprovedon]
,[tle_qqapprovedon]
,[tle_fddreceived]
,[tle_fddsent]
,[tle_closingdocssent]
,[tle_closingdocssigned]
,tle_lease_request_form_date
,LastActivityType
,LastActivityName 
,[Statecode]
,[Statuscode]
,CenterState
,LeadState
,[InfantA]
,[InfantB]
,[Toddler]
,[Twaddler]
,[Prepper]
,[Prek1]
,[Prek2]
,[Appointment]
,[Email]
,[Fax]
,[Letter]
,[PhoneCall]
,[DaysQualtoClose]
,[DaysCreatetoQual]
,DaysSinceCreated
,PrepaymentAmt
,RefundAmount
,CenterMaturity
,[LeadCnt]
,[LeadAssets]
,[LeadLiabilities]
,TLE_WebLeadsource
)

SELECT
ISNULL(Center.[centerid_pk],-1) centerid_pk
,ISNULL(Child.[childid_pk],-1)  childid_pk
,ISNULL(Lead.[leadid_pk],-1)   leadid_pk
,isnull(FL.tle_leadtype,-1) leadtype_pk
,isnull(DimCampaign.CampaignId_pk,-1) CampaignId_pk
,isnull(Opportunityid_pk,-1)  Opportunityid_pk
,case when Opportunity.[owneridname] != 'unknown' Collate Database_Default then  Opportunity.[owneridname] Collate Database_Default else FL.[owneridname]  Collate Database_Default End [owneridname]
,FL.[tle_referredby]
,FL.[tle_areaofinterest]
,isnull(estimatedclosedate.[SK_Date],-1)   estimatedclosedate-- 
,isnull(Lease_leasedate.[SK_Date],-1) Lease_leasedate
,isnull(tle_lastcontacton.[SK_Date],-1) tle_lastcontacton --
,isnull(center_createdon.[SK_Date],-1)  center_createdon
,isnull(Lead_expectedstartdate.[SK_Date],-1) Lead_expectedstartdate
,isnull(Lead_preenrollpaymtreceivedon.[SK_Date],-1)  Lead_preenrollpaymtreceivedon
,isnull(Lead_createdon.[SK_Date],-1) Lead_createdon
,isnull(oppcreatedon.[SK_Date],-1) Opportunity_Createon
,isnull(Lead_modifiedon.[SK_Date],-1) Lead_modifiedon
,isnull(lastapptdate.[SK_Date],-1) lastapptdate
,isnull(isnull(tle_initialcontacton.[SK_Date],Lead_createdon.[SK_Date]),-1)  tle_initialcontacton
,isnull(tle_ActualOpenDate.[SK_Date],-1) ActualOpenDate
,[LeadDisqualifiedDate] = -1
,isnull(RefundProcessedOnDate.[SK_Date],isnull(refundprocessedon.[SK_Date],-1) ) [RefundProcessedOnDate]
,[LastActivityDate] = case when OppActivity.modifiedon is not null then OppActivity.modifiedon else isnull(LeadActivity.modifiedon,-1) End 

,Opportunity_actualclosedatedate = isnull(Opportunity_actualclosedatedate.[SK_Date],-1)
,Opportunity_closingdocssentdate = isnull(Opportunity_closingdocssentdate.[SK_Date],-1)
,Opportunity_fddreceiveddate = isnull(Opportunity_fddreceiveddate.[SK_Date],-1)
,Opportunity_fddsentdate = isnull(Opportunity_fddsentdate.[SK_Date],-1)

,tle_sitebookapprovedon = isnull(tle_sitebookapprovedon.[SK_Date],-1)
,tle_sitebookcompletedon = isnull(tle_sitebookcompletedon.[SK_Date],-1)
,tle_sitebookfinalreviewon = isnull(tle_sitebookfinalreviewon.[SK_Date],-1)
,tle_leasedate = isnull(tle_leasedate.[SK_Date],-1)
,tle_loi_ready_date = isnull(tle_loi_ready_date.[SK_Date],-1)
,tle_loi_sent_date = isnull(tle_loi_sent_date.[SK_Date],-1)
,tle_loi_signed_date = isnull(tle_loi_signed_date.[SK_Date],-1)
,tle_site_approved_date = isnull(tle_site_approved_date.[SK_Date],-1)
,tle_developerapprovedon = isnull(tle_developerapprovedon.[SK_Date],-1)
,tle_qqapprovedon = isnull(tle_qqapprovedon.[SK_Date],-1)
,tle_fddreceived = isnull(tle_fddreceived.[SK_Date],-1)
,tle_fddsent = isnull(tle_fddsent.[SK_Date],-1)
,tle_closingdocssent = isnull(tle_closingdocssent.[SK_Date],-1)
,tle_closingdocssigned = isnull(tle_closingdocssigned.[SK_Date],-1)
,tle_lease_request_form_date = isnull(tle_lease_request_form_date.[SK_Date],-1)

,LastActivityType  = case when OppActivity.activitytypecodename is not null then OppActivity.activitytypecodename else isnull(LeadActivity.activitytypecodename,'unknown') End 
,LastActivityName   = case when OppActivity.modifiedbyname is not null then OppActivity.modifiedbyname else isnull(LeadActivity.modifiedbyname,'unknown') End 
,case when isnull(Opportunity.[statecode],-1)  != -1 then isnull(Opportunity.[statecode]*100,-1) 
	  else isnull(Lead.[statecode],-1) End  statecode
,case 
when isnull(Child.tle_pe_status,-1) !=-1 then isnull(Child.tle_pe_status ,-1) 
when isnull(Opportunity.[statuscode],-1) != -1 then isnull(Opportunity.[statuscode],-1) 
else isnull(Lead.[statuscode],-1) End statuscode
,CenterState = isnull((select isnull([StateID_pk],-1) from [dbo].[DE_DimState] where [StateID_sk]=isnull(Center.[tle_state],-1) ),-1)
,LeadState = isnull((select isnull([StateID_pk],-1) from [dbo].[DE_DimState] where [StateID_sk]=isnull(Lead.[address1_stateorprovince],-1) ),-1)
,[InfantA] = 0 
,[InfantB] = 0 
,[Toddler] = 0 
,[Twaddler] = 0 
,[Prepper] = 0 
,[Prek1] = 0 
,[Prek2] = 0 
,[Appointment] = 0 
,[Email] = 0 
,[Fax] = 0 
,[Letter] = 0 
,[PhoneCall] = 0 
,[DaysQualtoClose] = abs(isnull(datediff(d,Lead.modifiedon,crm.tle_paymentdate),0))
,[DaysCreatetoQual] = abs(isnull(datediff(d,Lead.createdon,crm.tle_paymentdate),0)) --- last modified date is the qualification date per Oliver and Hernando
,[DaysSinceCreated] = abs(isnull(datediff(d,Lead.createdon,getdate()),0)) 
,PrepaymentAmt = isnull(crm.[tle_paymentamount],0)
,RefundAmount = isnull(crm.tle_refundamount,0)
,CenterMaturity = case when Center.tle_ActualOpenDate is null then 0 else datediff(d,Center.tle_ActualOpenDate,getdate()) End
,[LeadCnt] =1
,[LeadAssets] = 0
,[LeadLiabilities] = 0,
TLE_WebLeadsource
FROM
[dbo].[DE_DimLead] Lead
left outer join [TLEPROD_MSCRM].[dbo].[FilteredLead]  FL on FL.LeadID = Lead.LeadID
left outer join [dbo].[DE_DimOpportunity] Opportunity on  Opportunity.originatingleadid = Lead.LeadID
left outer join [TLEPROD_MSCRM].[dbo].[ContactBase] ContactBase on ContactBase.OriginatingLeadId =  Lead.[leadid]
left outer join [dbo].[DE_DimChild] Child on  Child.[tle_leadid] = Lead.[leadid]
left outer join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] crm on crm.[tle_childid] =Child.tle_childid
left outer join [dbo].[DE_DimCenter] Center on Center.[tle_centerid] = Lead.[tle_centerid]
left outer join [dbo].[DE_DimDate] Lease_leasedate on Lease_leasedate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Center.[tle_leasedate]))   
left outer join [dbo].[DE_DimDate] center_createdon on center_createdon.[PK_Date] =  DateAdd(dd,0,DateDiff(dd,0,Center.createdon))    
left outer join [dbo].[DE_DimDate] Lead_expectedstartdate on Lead_expectedstartdate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_expectedstartdate))    
left outer join [dbo].[DE_DimDate] Lead_preenrollpaymtreceivedon on Lead_preenrollpaymtreceivedon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,CRM.tle_paymentdate))  
left outer join [dbo].[DE_DimDate] Lead_createdon on Lead_createdon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Lead.createdon))
left outer join [dbo].[DE_DimDate] Lead_modifiedon on Lead_modifiedon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Lead.modifiedon))
left outer join [dbo].[DE_DimDate] lastapptdate on lastapptdate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_lastapptdate))
left outer join [dbo].[DE_DimDate] tle_initialcontacton on tle_initialcontacton.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_initialcontacton))
left outer join [dbo].[DE_DimDate] tle_ActualOpenDate on tle_ActualOpenDate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Center.tle_ActualOpenDate))
left outer join [dbo].[DE_DimDate] RefundProcessedOnDate on RefundProcessedOnDate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,CRM.tle_RefundDate))
left outer join [dbo].[DE_DimDate] tle_lastcontacton on tle_lastcontacton.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,FL.estimatedclosedate))
left outer join [dbo].[DE_DimDate] estimatedclosedate on estimatedclosedate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,FL.estimatedclosedate))
left outer join [dbo].[DE_DimDate] refundprocessedon on refundprocessedon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.refundprocessedon))
left outer join [dbo].[DE_DimDate] oppcreatedon on oppcreatedon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.createdon))
left outer join [dbo].[DE_DimDate] Opportunity_actualclosedatedate on Opportunity_actualclosedatedate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.actualclosedate))
left outer join [dbo].[DE_DimDate] Opportunity_closingdocssentdate on Opportunity_closingdocssentdate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.tle_closingdocssent))
left outer join [dbo].[DE_DimDate] Opportunity_fddreceiveddate on Opportunity_fddreceiveddate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.tle_fddreceived))
left outer join [dbo].[DE_DimDate] Opportunity_fddsentdate on Opportunity_fddsentdate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.tle_fddsent))

left outer join [dbo].[DE_DimDate] tle_sitebookapprovedon on tle_sitebookapprovedon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.tle_sitebookapprovedon))
left outer join [dbo].[DE_DimDate] tle_sitebookcompletedon on tle_sitebookcompletedon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.tle_sitebookcompletedon))
left outer join [dbo].[DE_DimDate] tle_sitebookfinalreviewon on tle_sitebookfinalreviewon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Opportunity.tle_sitebookfinalreviewon))
left outer join [dbo].[DE_DimDate] tle_leasedate on tle_leasedate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,center.tle_leasedate))


left outer join [dbo].[DE_DimDate] tle_loi_ready_date on tle_loi_ready_date.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_loi_ready_date))
left outer join [dbo].[DE_DimDate] tle_loi_sent_date on tle_loi_sent_date.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_loi_sent_date))
left outer join [dbo].[DE_DimDate] tle_loi_signed_date on tle_loi_signed_date.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_loi_signed_date))
left outer join [dbo].[DE_DimDate] tle_site_approved_date on tle_site_approved_date.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_site_approved_date))
left outer join [dbo].[DE_DimDate] tle_developerapprovedon on tle_developerapprovedon.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_developerapprovedon))
left outer join [dbo].[DE_DimDate] tle_qqapprovedon on tle_qqapprovedon.[PK_Date]   = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_qqapprovedon))
left outer join [dbo].[DE_DimDate] tle_fddreceived on tle_fddreceived.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_fddreceived))
left outer join [dbo].[DE_DimDate] tle_fddsent on tle_fddsent.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_fddsent))
left outer join [dbo].[DE_DimDate] tle_closingdocssent on tle_closingdocssent.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_closingdocssent))
left outer join [dbo].[DE_DimDate] tle_closingdocssigned on tle_closingdocssigned.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Lead.tle_closingdocssigned))
left outer join [dbo].[DE_DimDate] tle_lease_request_form_date on tle_lease_request_form_date.[PK_Date]  = DateAdd(dd,0,DateDiff(dd,0,Opportunity.tle_lease_request_form_date))

left outer join [dbo].[DE_DimCampaign] DimCampaign on DimCampaign.[CampaignId] = FL.campaignid
left outer join  #LastAcvtivity LeadActivity on LeadActivity.regardingobjectid = Lead.LeadID
left outer join  #LastAcvtivity OppActivity on OppActivity.regardingobjectid = Opportunity.opportunityid




-----------------------------------
----- disqualified date
----------------------------------

update fact
set fact.[LeadDisqualifiedDate] = isnull(LeadDisqualifiedDate.[SK_Date],-1) 
-- select fact.*
from 
[dbo].[DE_FactPre_enrollment] fact
inner join [dbo].[DE_DimLead] lead on lead.leadid_pk = fact.leadid_pk
inner join [TLEPROD_MSCRM].[dbo].[auditBase] audit on audit.ObjectId = Lead.[leadid] and [Action] = 25  and Operation =2 
inner join [dbo].[DE_DimDate] LeadDisqualifiedDate on LeadDisqualifiedDate.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,audit.CreatedOn))
WHERE
audit.CreatedOn IS NOT NULL



update fact
set fact.[LeadDisqualifiedDate] =  isnull(Lead_createdon.[SK_Date],-1) 
-- select fact.*
from 
[dbo].[DE_FactPre_enrollment] fact
inner join [dbo].[DE_DimLead] lead on lead.leadid_pk = fact.leadid_pk
inner join [dbo].[DE_DimDate] Lead_createdon on Lead_createdon.[PK_Date] = DateAdd(dd,0,DateDiff(dd,0,Lead.createdon))
where
lead.[createdon]  between  DATEADD(mm, DATEDIFF(mm,0,lead.[createdon]), 0) and  dateadd(month,1+datediff(month,0,getdate()),-1)
and [statuscodename] != 'Active'

-----------------------------------
----- calculate activity meausure
----------------------------------

IF OBJECT_ID('tempdb..#Results1') IS NOT NULL
    DROP TABLE #Results1


select 
[centerid_pk]
,[childid_pk]
,[leadid_pk]
,Act_Type
,count(*) cnt
into #Results1
from 
(
select 
[centerid_pk]
,[childid_pk]
,[leadid_pk]
,case when AP.[activitytypecode] = 4201 then 'Appointment'
when AP.[activitytypecode] = 4202 then 'Email'
when AP.[activitytypecode] = 4204 then 'Fax'
when AP.[activitytypecode] = 4207 then 'Letter'
when AP.[activitytypecode] = 4210 then 'Phone Call'
else 'unknown'
End as Act_Type
--   select  Center.tle_centerid 
from
[TLEPROD_MSCRM].[dbo].[FilteredLead] FL
inner join [dbo].[DE_DimLead] DimLead on DimLead.[leadid] = FL.[leadid]
inner join [TLEPROD_MSCRM].[dbo].FilteredActivityPointer AP  ON AP.[regardingobjectid] = FL.[leadid]
inner join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH on CH.[tle_leadid]  = FL.[leadid]
inner join [dbo].[DE_DimChild] DimChild on DimChild.tle_childid = CH.tle_childid
inner join [dbo].[DE_DimCenter] Center on Center.tle_centerid = FL.[tle_centerid] 
) j1
group by
[centerid_pk]
,[childid_pk]
,[leadid_pk]
,Act_Type


UPDATE  PE
SET Appointment  = cnt
from
#Results1 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.Act_Type = 'Appointment'


UPDATE  PE
SET Email  = cnt
from
#Results1 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.Act_Type = 'Email'

UPDATE  PE
SET Fax  = cnt
from
#Results1 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.Act_Type = 'Fax'

UPDATE  PE
SET Letter  = cnt
from
#Results1 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.Act_Type = 'Letter'


UPDATE  PE
SET PhoneCall  = cnt
from
#Results1 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.Act_Type = 'Phone Call'




-----------------------------------
----- calculate classroom meausure
----------------------------------
IF OBJECT_ID('tempdb..#Results2') IS NOT NULL
    DROP TABLE #Results2

select 
[centerid_pk]
,[childid_pk]
,[leadid_pk]
,CH.[tle_programname]
into  #Results2
from
[TLEPROD_MSCRM].[dbo].[FilteredLead] FL
inner join [dbo].[DE_DimLead] DimLead on DimLead.[leadid] = FL.[leadid]
inner join [TLEPROD_MSCRM].[dbo].[Filteredtle_child] CH on CH.[tle_leadid]  = FL.[leadid]
inner join [dbo].[DE_DimChild] DimChild on DimChild.tle_childid = CH.tle_childid
inner join [dbo].[DE_DimCenter] Center on Center.tle_centerid = FL.[tle_centerid] 

UPDATE  PE
SET PE.[InfantA] = 1
from
#Results2 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.tle_programname = 'Infant'

UPDATE  PE
SET PE.Toddler = 1
from
#Results2 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.tle_programname ='Toddler'

UPDATE  PE
SET PE.Twaddler = 1
from
#Results2 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.tle_programname ='Twaddler'

UPDATE  PE
SET PE.Prepper = 1
from
#Results2 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.tle_programname = 'Prepper'

UPDATE  PE
SET PE.Prek1 = 1
from
#Results2 R1 
inner join [dbo].[DE_FactPre_enrollment] PE on R1.[centerid_pk] = PE.[centerid_pk] and R1.[childid_pk] = PE.[childid_pk] and R1.[leadid_pk] = PE.[leadid_pk]
where
R1.tle_programname like '%Pre%'


-----------------------------------
----- LeadCnt - no multiple children
----------------------------------


-- zero out dups first 
update t
set [LeadCnt] = 0
--select *
from [dbo].[DE_FactPre_enrollment] t
inner join 
	(
			select
			[leadid_pk]
			, count(*) cnt 
			from
			[dbo].[DE_FactPre_enrollment]
			group by [leadid_pk]
			having count(*)> 1
		) j1 on j1.[leadid_pk] = t.[leadid_pk]



---- put back one
update t
set [LeadCnt] = 1
--select *
from [dbo].[DE_FactPre_enrollment] t
inner join 
	(
	select pe.[leadid_pk], max([childid_pk]) childid_pk
	from
		(
			select
			[leadid_pk]
			, count(*) cnt 
			from
			[dbo].[DE_FactPre_enrollment]
			group by [leadid_pk]
			having count(*)> 1
		) j1 
	inner join [dbo].[DE_FactPre_enrollment] pe on pe.[leadid_pk] = j1.[leadid_pk]
	group by pe.[leadid_pk] 
	) j2 
on j2.[leadid_pk]  = t.[leadid_pk] and   j2.childid_pk = t.childid_pk



-----------------------------------
----- load lat and lon
----------------------------------


update DC
set [LAT] = j1.[LAT]
, [LON] = j1.[LNG]
FROM 
[TLECO].[dbo].[DE_DimCenter] DC
inner join [TLEPROD_MSCRM].[dbo].[tle_centerBase]  cb on cb.[tle_centerid] = DC.[tle_centerid]
left outer join 
(
SELECT [CustKey]
      ,[SchoolKey]
      ,[SCHOOL_NAME]
      ,[DatabaseName]
      ,[SCHOOL_OPEN_DATE]
      ,[SCHOOL_ADDRESS]
      ,[SCHOOL_ADDRESS2]
      ,[SCHOOL_CITY_ID]
      ,[ZIP]
      ,[SCHOOL_CONTACT]
      ,[STATUS]
      ,[ARCH_CAPACITY]
      ,[LICE_CAPACITY]
      ,[MATURITY]
      ,[LAT]
      ,[LNG]
      ,[TYPE]
      ,[INTERNAL_REGION]
      ,[AMID]
      ,[SCHOOL_IMG]
      ,[SCHOOL_PHONE]
      ,[LOCATION_ID]
      ,[SYNC_AGENT_ID]
      ,[DatabaseServer]
      ,[ADPID]
	  ,rtrim(Convert(char(2),r.[SCHOOL_REGION_ID]))+rtrim(r.SCHOOL_STATE_NAME)+rtrim(Convert(char(10),s.zip))+'01' sitekey
  FROM [TLEFLSQL1\CCMSERVER].[DataWarehouse].[dbo].[LU_SCHOOL] s
inner join [TLEFLSQL1\CCMSERVER].[DataWarehouse].[dbo].[LU_SCHOOL_STATE] r on right(s.custKey,2)=r.SCHOOL_STATE_NAME
) j1 on j1.sitekey = [tle_gpsite] collate Latin1_General_CI_AI
 
where
j1.[lat] is not null
and DC.[LAT] != j1.[LAT]
and DC.[LON] != j1.[LNG]



-----------------------------------
----- update assets and liabilities
----------------------------------

update t
set [LeadAssets] = j2.[LeadAssets] ,  [LeadLiabilities] = j2.[LeadLiabilities]
--select *
from [dbo].[DE_FactPre_enrollment] t
inner join 
(
select [tle_leadid], [leadid_pk], sum(assets) LeadAssets, sum(Liab) LeadLiabilities
	from
	(
			select 
			[tle_leadid], sum(tle_value) assets , 0 Liab
			FROM [TLEPROD_MSCRM].[dbo].[Filteredtle_asset]
			group by   [tle_leadid]

			union 

			select 
			[tle_leadid], 0 assets , sum([tle_totalbalance]) Liab
			FROM [TLEPROD_MSCRM].[dbo].[Filteredtle_liability]
			group by   [tle_leadid]
	) j1
inner join [dbo].[DE_DimLead] j3 on j3.leadid = j1.tle_leadid
group by j1.tle_leadid, [leadid_pk]

) j2 on j2.[leadid_pk]= t.leadid_pk


-- zero out dup's 
update t
set [LeadAssets] = 0,   [LeadLiabilities] = 0
--select *
from [dbo].[DE_FactPre_enrollment] t
inner join 
	(
			select
			[leadid_pk]
			, count(*) cnt 
			from
			[dbo].[DE_FactPre_enrollment]
			group by [leadid_pk]
			having count(*)> 1
		) j1 on j1.[leadid_pk] = t.[leadid_pk]


		--add last task to opportunity
		update [DE_DimOpportunity] set [description]=b.[subject1]
from
(
select Max(actualend) actualend,Max([subject]) as subject1,regardingobjectid as OpID  from tleprod_mscrm.dbo.FilteredTask 
group by regardingobjectid
) b
where 
de_dimOpportunity.opportunityid=b.OpID

update [DE_DimOpportunity] set [needname]=b.tle_centeridname
from
(
select tle_centeridname, opportunityid OpID from tleprod_mscrm.dbo.FilteredOpportunity
) b
where 
de_dimOpportunity.opportunityid=b.OpID

GO
GRANT EXECUTE ON  [dbo].[DE_Pre_enrollment_LoadCube_sp] TO [DYNGRP]
GO
