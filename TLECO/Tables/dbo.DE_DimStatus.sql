CREATE TABLE [dbo].[DE_DimStatus]
(
[Status_pk] [int] NOT NULL IDENTITY(1, 1),
[StatusDesc] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_DimStatus] ADD CONSTRAINT [Status_pk] PRIMARY KEY CLUSTERED  ([Status_pk]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimStatus] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimStatus] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimStatus] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimStatus] TO [DYNGRP]
GO
