CREATE TABLE [dbo].[DE_DimLeadType]
(
[leadtype_pk] [int] NOT NULL,
[leadtypename] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_DimLeadType] ADD CONSTRAINT [PK_DE_DimLeadtype] PRIMARY KEY CLUSTERED  ([leadtype_pk]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimLeadType] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimLeadType] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimLeadType] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimLeadType] TO [DYNGRP]
GO
