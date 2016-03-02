CREATE TABLE [dbo].[UPR42100]
(
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[Past_Pay_Periods] [smallint] NOT NULL,
[Current_Pay_Periods] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42100] ADD CONSTRAINT [PKUPR42100] PRIMARY KEY NONCLUSTERED  ([Pay_Schedule]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR42100] ON [dbo].[UPR42100] ([DSCRIPTN], [Pay_Schedule], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42100].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42100].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42100].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42100].[Past_Pay_Periods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR42100].[Current_Pay_Periods]'
GO
GRANT SELECT ON  [dbo].[UPR42100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42100] TO [DYNGRP]
GO
