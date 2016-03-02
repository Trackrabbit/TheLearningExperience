CREATE TABLE [dbo].[DE_DimCampaign]
(
[CampaignId_pk] [int] NOT NULL IDENTITY(1, 1),
[CampaignId] [uniqueidentifier] NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_DimCampaign] ADD CONSTRAINT [PK_DE_DimCampaign] PRIMARY KEY CLUSTERED  ([CampaignId_pk]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_DimCampaign] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_DimCampaign] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_DimCampaign] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_DimCampaign] TO [DYNGRP]
GO
