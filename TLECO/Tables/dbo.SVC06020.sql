CREATE TABLE [dbo].[SVC06020]
(
[WOTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WOSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ROUTEID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WIPINV] [int] NOT NULL,
[WIPLABOR] [int] NOT NULL,
[SVC_Do_Expense] [tinyint] NOT NULL,
[SVC_Expense_Index] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06020] ADD CONSTRAINT [PKSVC06020] PRIMARY KEY CLUSTERED  ([WOTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06020] ON [dbo].[SVC06020] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06020].[WOTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06020].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06020].[WOSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06020].[ROUTEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06020].[WIPINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06020].[WIPLABOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06020].[SVC_Do_Expense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06020].[SVC_Expense_Index]'
GO
GRANT SELECT ON  [dbo].[SVC06020] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06020] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06020] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06020] TO [DYNGRP]
GO
