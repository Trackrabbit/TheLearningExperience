CREATE TABLE [dbo].[B7112100]
(
[RMDTYPAL] [smallint] NOT NULL,
[RMDNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RecogScheduleCancel] [tinyint] NOT NULL,
[BSSI_ckDeferral_Trx] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7112100] ADD CONSTRAINT [PKB7112100] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [RMDNUMWK]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112100].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7112100].[RMDNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112100].[BSSI_RecogScheduleCancel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7112100].[BSSI_ckDeferral_Trx]'
GO
GRANT SELECT ON  [dbo].[B7112100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7112100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7112100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7112100] TO [DYNGRP]
GO
