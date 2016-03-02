CREATE TABLE [dbo].[DE_FactCampaign]
(
[CampaignId_pk] [int] NOT NULL,
[CampaignId] [uniqueidentifier] NULL,
[Budget] [money] NULL,
[Cost] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DE_FactCampaign] ADD CONSTRAINT [PK_DE_FactCampaign] PRIMARY KEY CLUSTERED  ([CampaignId_pk]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DE_FactCampaign] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DE_FactCampaign] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DE_FactCampaign] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DE_FactCampaign] TO [DYNGRP]
GO
