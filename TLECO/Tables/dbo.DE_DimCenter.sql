CREATE TABLE [dbo].[DE_DimCenter]
(
[centerid_pk] [int] NOT NULL IDENTITY(1, 1),
[tle_centerid] [uniqueidentifier] NULL,
[tle_name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_state] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_stateidname] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_city] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_ownershiptypename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_acceptsworkandfamily] [bit] NULL,
[tle_acceptsworkandfamilyname] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_businessmanageridname] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_businessmanageridyominame] [nvarchar] (450) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_centertype] [int] NULL,
[tle_centertypename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_countryidname] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_countyidname] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_emailaddress1] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_fax] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_final] [datetime] NULL,
[tle_finalutc] [datetime] NULL,
[tle_foundation] [datetime] NULL,
[tle_foundationutc] [datetime] NULL,
[tle_frame] [datetime] NULL,
[tle_frameutc] [datetime] NULL,
[tle_franchiseeidname] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_isacceptspreenrollment] [bit] NULL,
[tle_isacceptspreenrollmentname] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_landlordidname] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_landlordidyominame] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_lastinspectionon] [datetime] NULL,
[tle_lastinspectiononutc] [datetime] NULL,
[tle_leasedate] [datetime] NULL,
[tle_leasedateutc] [datetime] NULL,
[tle_leasenumber] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_locationdescription] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_maincenterididname] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_outlook] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_postalcode] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_preenrollmentfee] [money] NULL,
[tle_preenrollmentfee_base] [money] NULL,
[tle_squarefootage] [int] NULL,
[tle_telephone1] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_townsiteplanapproval] [datetime] NULL,
[tle_townsiteplanapprovalutc] [datetime] NULL,
[createdon] [datetime] NULL,
[statecode] [int] NULL,
[statecodename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[statuscode] [int] NULL,
[statuscodename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_ActualOpenDate] [datetime] NULL,
[LAT] [float] NULL,
[LON] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_DimCenter] ADD CONSTRAINT [PK_DE_DimCenter] PRIMARY KEY CLUSTERED  ([centerid_pk]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimCenter] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimCenter] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimCenter] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimCenter] TO [DYNGRP]
GO
