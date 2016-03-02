CREATE TABLE [dbo].[DE_DimOpportunity]
(
[opportunityid_pk] [int] NOT NULL IDENTITY(1, 1),
[opportunityid] [uniqueidentifier] NOT NULL,
[statecode] [int] NOT NULL,
[statecodename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[statuscode] [int] NULL,
[statuscodename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[campaignid] [uniqueidentifier] NULL,
[completefinalproposalname] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[contactid] [uniqueidentifier] NULL,
[contactidname] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[createdbyname] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[createdon] [datetime] NULL,
[customeridname] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[decisionmakername] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[name] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[need] [int] NULL,
[needname] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[opportunityratingcode] [int] NULL,
[opportunityratingcodename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[originatingleadid] [uniqueidentifier] NULL,
[owneridname] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[stepname] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_centerid] [uniqueidentifier] NULL,
[tle_interestname] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_typename] [nvarchar] (4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[refundamount] [money] NULL,
[refundprocessedon] [datetime] NULL,
[estimatedclosedate] [datetime] NULL,
[actualclosedate] [datetime] NULL,
[tle_closingdocssent] [datetime] NULL,
[tle_fddreceived] [datetime] NULL,
[tle_fddsent] [datetime] NULL,
[tle_matchdate] [datetime] NULL,
[tle_sitebookapprovedon] [datetime] NULL,
[tle_sitebookcompletedon] [datetime] NULL,
[tle_sitebookfinalreviewon] [datetime] NULL,
[tle_lease_request_form_date] [datetime] NULL,
[TLE_OpportunityFirstContactDate] [datetime] NULL,
[TLE_opportunityCreatedDate] [datetime] NULL,
[TLE_ReferredBy] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TLE_LeadSource] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_DimOpportunity] ADD CONSTRAINT [PK_DE_DimOpportunity] PRIMARY KEY CLUSTERED  ([opportunityid_pk]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimOpportunity] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimOpportunity] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimOpportunity] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimOpportunity] TO [DYNGRP]
GO
