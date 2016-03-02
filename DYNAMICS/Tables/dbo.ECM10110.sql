CREATE TABLE [dbo].[ECM10110]
(
[CompanyID] [int] NOT NULL,
[ReqID] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SequenceID] [int] NOT NULL,
[Authorized] [int] NOT NULL,
[ERRCODE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ECM10110] ADD CONSTRAINT [PKECM10110] PRIMARY KEY CLUSTERED  ([CompanyID], [ReqID], [SequenceID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10110].[CompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10110].[ReqID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10110].[SequenceID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10110].[Authorized]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10110].[ERRCODE]'
GO
GRANT SELECT ON  [dbo].[ECM10110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ECM10110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ECM10110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ECM10110] TO [DYNGRP]
GO
