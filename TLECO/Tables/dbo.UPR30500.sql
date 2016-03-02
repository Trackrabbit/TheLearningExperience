CREATE TABLE [dbo].[UPR30500]
(
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Pay_Schedule] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[Workflow_Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR30500] ADD CONSTRAINT [PKUPR30500] PRIMARY KEY NONCLUSTERED  ([EMPLOYID], [Pay_Schedule], [YEAR1], [PERIODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR30500] ON [dbo].[UPR30500] ([Pay_Schedule], [YEAR1], [PERIODID], [EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30500].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR30500].[Pay_Schedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30500].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30500].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR30500].[Workflow_Status]'
GO
GRANT SELECT ON  [dbo].[UPR30500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR30500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR30500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR30500] TO [DYNGRP]
GO
