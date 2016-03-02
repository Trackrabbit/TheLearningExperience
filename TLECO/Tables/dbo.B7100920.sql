CREATE TABLE [dbo].[B7100920]
(
[SEQNUMBR] [int] NOT NULL,
[BSSI_User_Def_Field] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100920] ADD CONSTRAINT [PKB7100920] PRIMARY KEY NONCLUSTERED  ([BSSI_User_Def_Field], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100920].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100920].[BSSI_User_Def_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100920].[USERID]'
GO
GRANT SELECT ON  [dbo].[B7100920] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100920] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100920] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100920] TO [DYNGRP]
GO
