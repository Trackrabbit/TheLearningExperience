CREATE TABLE [dbo].[B7100970]
(
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[BSSI_User_Def_Field] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_User_Def_Value] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100970] ADD CONSTRAINT [PKB7100970] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [SQNCLINE], [BSSI_User_Def_Field]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100970].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100970].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100970].[BSSI_User_Def_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100970].[BSSI_User_Def_Value]'
GO
GRANT SELECT ON  [dbo].[B7100970] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100970] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100970] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100970] TO [DYNGRP]
GO
