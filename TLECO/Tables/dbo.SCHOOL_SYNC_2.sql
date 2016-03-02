CREATE TABLE [dbo].[SCHOOL_SYNC_2]
(
[CustKey] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SchoolKey] [int] NULL,
[SCHOOL_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DatabaseName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHOOL_OPEN_DATE] [datetime] NULL,
[SCHOOL_ADDRESS] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHOOL_ADDRESS2] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHOOL_CITY_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIP] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHOOL_CONTACT] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[STATUS] [int] NULL,
[ARCH_CAPACITY] [int] NULL,
[LICE_CAPACITY] [int] NULL,
[MATURITY] [int] NULL,
[LAT] [numeric] (10, 7) NULL,
[LNG] [numeric] (10, 7) NULL,
[TYPE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INTERNAL_REGION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AMID] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHOOL_IMG] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SCHOOL_PHONE] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LOCATION_ID] [int] NULL,
[SYNC_AGENT_ID] [int] NULL,
[DatabaseServer] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ADPID] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SNS_DBNAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SNS_DBSERVER] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COMPLIANCE_FLAG] [tinyint] NULL,
[GP_SITE_ID] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SCHOOL_SYNC_2] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SCHOOL_SYNC_2] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SCHOOL_SYNC_2] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SCHOOL_SYNC_2] TO [DYNGRP]
GO
