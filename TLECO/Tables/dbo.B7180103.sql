CREATE TABLE [dbo].[B7180103]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ckDeferral_Trx] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7180103] ADD CONSTRAINT [PKB7180103] PRIMARY KEY CLUSTERED  ([POPRCTNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7180103].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180103].[BSSI_ckDeferral_Trx]'
GO
GRANT SELECT ON  [dbo].[B7180103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7180103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7180103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7180103] TO [DYNGRP]
GO
