CREATE TABLE [dbo].[BSSI0101]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RegExp_NotifDays] [smallint] NOT NULL,
[BSSI_RegExp_DefaultDays] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BSSI0101] ADD CONSTRAINT [PKBSSI0101] PRIMARY KEY NONCLUSTERED  ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0101].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BSSI0101].[BSSI_RegExp_NotifDays]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BSSI0101].[BSSI_RegExp_DefaultDays]'
GO
GRANT SELECT ON  [dbo].[BSSI0101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI0101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI0101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI0101] TO [DYNGRP]
GO
