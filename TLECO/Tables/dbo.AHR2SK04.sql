CREATE TABLE [dbo].[AHR2SK04]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKILLSETNUMBER_I] [int] NOT NULL,
[PCTCERTIFIED_I] [smallint] NOT NULL,
[PCTCOMPLETED_I] [smallint] NOT NULL,
[NUMBERPOSSESSED_I] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2SK04] ADD CONSTRAINT [PKAHR2SK04] PRIMARY KEY CLUSTERED  ([EMPID_I], [SKILLSETNUMBER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHR2SK04] ON [dbo].[AHR2SK04] ([SKILLSETNUMBER_I], [EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2SK04].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2SK04].[SKILLSETNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2SK04].[PCTCERTIFIED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2SK04].[PCTCOMPLETED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2SK04].[NUMBERPOSSESSED_I]'
GO
GRANT SELECT ON  [dbo].[AHR2SK04] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2SK04] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2SK04] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2SK04] TO [DYNGRP]
GO
