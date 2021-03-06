CREATE TABLE [dbo].[UPR10107]
(
[RPTNGYR] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OTHRCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OTHBXNUM] [smallint] NOT NULL,
[OTHRAMNT] [numeric] (19, 5) NOT NULL,
[W2PRINTD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10107] ADD CONSTRAINT [PKUPR10107] PRIMARY KEY NONCLUSTERED  ([RPTNGYR], [EMPLOYID], [OTHRCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1UPR10107] ON [dbo].[UPR10107] ([RPTNGYR], [EMPLOYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10107].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10107].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10107].[OTHRCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10107].[OTHBXNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10107].[OTHRAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10107].[W2PRINTD]'
GO
GRANT SELECT ON  [dbo].[UPR10107] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10107] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10107] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10107] TO [DYNGRP]
GO
