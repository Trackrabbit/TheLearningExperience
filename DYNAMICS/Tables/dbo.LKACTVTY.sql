CREATE TABLE [dbo].[LKACTVTY]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FORMNAME] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LKACTVTY] ADD CONSTRAINT [PKLKACTVTY] PRIMARY KEY CLUSTERED  ([USERID], [FORMNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LKACTVTY].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LKACTVTY].[FORMNAME]'
GO
GRANT SELECT ON  [dbo].[LKACTVTY] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LKACTVTY] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LKACTVTY] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LKACTVTY] TO [DYNGRP]
GO
