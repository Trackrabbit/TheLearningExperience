CREATE TABLE [dbo].[B7123100]
(
[DOCTYPE] [smallint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RecogScheduleCancel] [tinyint] NOT NULL,
[BSSI_ckDeferral_Trx] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7123100] ADD CONSTRAINT [PKB7123100] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [VCHRNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7123100].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7123100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7123100].[BSSI_RecogScheduleCancel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7123100].[BSSI_ckDeferral_Trx]'
GO
GRANT SELECT ON  [dbo].[B7123100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7123100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7123100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7123100] TO [DYNGRP]
GO
