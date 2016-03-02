CREATE TABLE [dbo].[AAG03000]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYROLCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPRACTYP] [smallint] NOT NULL,
[aaAliasID] [int] NOT NULL,
[aaAssignedPercent] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG03000] ADD CONSTRAINT [PKAAG03000] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [JOBTITLE], [DEPRTMNT], [UPRACTYP], [PAYROLCD], [aaAliasID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG03000].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG03000].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG03000].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG03000].[PAYROLCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG03000].[UPRACTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG03000].[aaAliasID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG03000].[aaAssignedPercent]'
GO
GRANT SELECT ON  [dbo].[AAG03000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG03000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG03000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG03000] TO [DYNGRP]
GO
