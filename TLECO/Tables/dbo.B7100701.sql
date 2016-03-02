CREATE TABLE [dbo].[B7100701]
(
[BSSI_EBTemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_EventID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Event_Percent] [smallint] NOT NULL,
[BSSI_ExpiryPeriod] [smallint] NOT NULL,
[BSSI_ATExpiryPeriod] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100701] ADD CONSTRAINT [PKB7100701] PRIMARY KEY NONCLUSTERED  ([BSSI_EBTemplateID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7100701] ON [dbo].[B7100701] ([BSSI_EBTemplateID], [BSSI_EventID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100701].[BSSI_EBTemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100701].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100701].[BSSI_EventID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100701].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100701].[BSSI_Event_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100701].[BSSI_ExpiryPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100701].[BSSI_ATExpiryPeriod]'
GO
GRANT SELECT ON  [dbo].[B7100701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100701] TO [DYNGRP]
GO
