CREATE TABLE [dbo].[DE_FactPre_enrollment]
(
[factid_pk] [int] NOT NULL IDENTITY(1, 1),
[centerid_pk] [int] NOT NULL,
[childid_pk] [int] NOT NULL,
[leadid_pk] [int] NOT NULL,
[leadtype_pk] [int] NULL,
[CampaignId_pk] [int] NULL,
[Opportunityid_pk] [int] NULL,
[owneridname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_referredby] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_areaofinterest] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[estimatedclosedate] [int] NULL,
[Lease_leasedate] [int] NOT NULL,
[tle_lastcontacton] [int] NULL,
[center_createdon] [int] NOT NULL,
[Lead_expectedstartdate] [int] NOT NULL,
[Lead_preenrollpaymtreceivedon] [int] NOT NULL,
[Lead_createdon] [int] NOT NULL,
[Opportunity_Createon] [int] NULL,
[Lead_modifiedon] [int] NOT NULL,
[tle_lastapptdate] [int] NULL,
[tle_initialcontacton] [int] NULL,
[ActualOpenDate] [int] NULL,
[LeadDisqualifiedDate] [int] NULL,
[RefundProcessedOnDate] [int] NULL,
[LastActivityDate] [int] NULL,
[Opportunity_actualclosedatedate] [int] NULL,
[Opportunity_closingdocssentdate] [int] NULL,
[Opportunity_fddreceiveddate] [int] NULL,
[Opportunity_fddsentdate] [int] NULL,
[tle_sitebookapprovedon] [int] NULL,
[tle_sitebookcompletedon] [int] NULL,
[tle_sitebookfinalreviewon] [int] NULL,
[tle_leasedate] [int] NULL,
[tle_loi_ready_date] [int] NULL,
[tle_loi_sent_date] [int] NULL,
[tle_loi_signed_date] [int] NULL,
[tle_site_approved_date] [int] NULL,
[tle_developerapprovedon] [int] NULL,
[tle_qqapprovedon] [int] NULL,
[tle_fddreceived] [int] NULL,
[tle_fddsent] [int] NULL,
[tle_closingdocssent] [int] NULL,
[tle_closingdocssigned] [int] NULL,
[tle_lease_request_form_date] [int] NULL,
[LastActivityType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastActivityName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Statecode] [int] NULL,
[Statuscode] [int] NULL,
[CenterState] [int] NULL,
[LeadState] [int] NULL,
[InfantA] [int] NOT NULL,
[InfantB] [int] NOT NULL,
[Toddler] [int] NOT NULL,
[Twaddler] [int] NOT NULL,
[Prepper] [int] NOT NULL,
[Prek1] [int] NOT NULL,
[Prek2] [int] NOT NULL,
[Appointment] [int] NOT NULL,
[Email] [int] NOT NULL,
[Fax] [int] NOT NULL,
[Letter] [int] NULL,
[PhoneCall] [int] NOT NULL,
[DaysQualtoClose] [int] NOT NULL,
[DaysCreatetoQual] [int] NOT NULL,
[DaysSinceCreated] [int] NULL,
[PrepaymentAmt] [money] NULL,
[RefundAmount] [money] NULL,
[CenterMaturity] [int] NULL,
[LeadCnt] [int] NULL,
[LeadAssets] [money] NULL,
[LeadLiabilities] [money] NULL,
[TLE_WebLeadsource] [nchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_FactPre_enrollment] ADD CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimCenter] FOREIGN KEY ([centerid_pk]) REFERENCES [dbo].[DE_DimCenter] ([centerid_pk])
GO
ALTER TABLE [dbo].[DE_FactPre_enrollment] ADD CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimChild] FOREIGN KEY ([childid_pk]) REFERENCES [dbo].[DE_DimChild] ([childid_pk])
GO
ALTER TABLE [dbo].[DE_FactPre_enrollment] ADD CONSTRAINT [FK_DE_FactPre_enrollment_DE_DimLead] FOREIGN KEY ([leadid_pk]) REFERENCES [dbo].[DE_DimLead] ([leadid_pk])
GO
GRANT SELECT ON  [dbo].[DE_FactPre_enrollment] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_FactPre_enrollment] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_FactPre_enrollment] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_FactPre_enrollment] TO [DYNGRP]
GO
