CREATE TABLE [dbo].[DE_DimChild]
(
[childid_pk] [int] NOT NULL IDENTITY(1, 1),
[tle_leadid] [uniqueidentifier] NULL,
[tle_childid] [uniqueidentifier] NULL,
[tle_dob] [datetime] NULL,
[tle_programname] [nvarchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_name] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tle_pe_status] [int] NULL,
[tle_pe_status_desc] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[statecodename] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[statuscodename] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_DimChild] ADD CONSTRAINT [PK_DE_DimChild] PRIMARY KEY CLUSTERED  ([childid_pk]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimChild] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimChild] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimChild] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimChild] TO [DYNGRP]
GO
