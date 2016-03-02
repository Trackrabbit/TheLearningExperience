CREATE TABLE [dbo].[B7100130]
(
[MODULE1] [smallint] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[BSSI_DistDeferralActIdx] [int] NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100130] ADD CONSTRAINT [PKB7100130] PRIMARY KEY NONCLUSTERED  ([MODULE1], [DISTTYPE], [BSSI_DistDeferralActIdx]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100130].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100130].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100130].[BSSI_DistDeferralActIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100130].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100130].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[B7100130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100130] TO [DYNGRP]
GO
