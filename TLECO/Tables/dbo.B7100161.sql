CREATE TABLE [dbo].[B7100161]
(
[MODULE1] [smallint] NOT NULL,
[VNDCLSID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[BSSI_DistDeferralActIdx] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100161] ADD CONSTRAINT [PKB7100161] PRIMARY KEY CLUSTERED  ([MODULE1], [VNDCLSID], [DISTTYPE], [BSSI_DistDeferralActIdx]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7100161] ON [dbo].[B7100161] ([VNDCLSID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100161].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100161].[VNDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100161].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100161].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100161].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100161].[BSSI_DistDeferralActIdx]'
GO
GRANT SELECT ON  [dbo].[B7100161] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100161] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100161] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100161] TO [DYNGRP]
GO
