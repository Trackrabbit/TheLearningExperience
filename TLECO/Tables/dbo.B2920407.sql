CREATE TABLE [dbo].[B2920407]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2920407] ADD CONSTRAINT [PKB2920407] PRIMARY KEY NONCLUSTERED  ([USERID], [BACHNUMB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920407].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2920407].[BACHNUMB]'
GO
GRANT SELECT ON  [dbo].[B2920407] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2920407] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2920407] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2920407] TO [DYNGRP]
GO
