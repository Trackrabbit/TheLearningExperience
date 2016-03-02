CREATE TABLE [dbo].[WDC51102]
(
[CmdParentDictID] [smallint] NOT NULL,
[CmdParentFormID] [smallint] NOT NULL,
[CmdParentCmdID] [smallint] NOT NULL,
[Node_Data] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WDC51102] ADD CONSTRAINT [PKWDC51102] PRIMARY KEY NONCLUSTERED  ([CmdParentDictID], [CmdParentFormID], [CmdParentCmdID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2WDC51102] ON [dbo].[WDC51102] ([Node_Data]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51102].[CmdParentDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51102].[CmdParentFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51102].[CmdParentCmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WDC51102].[Node_Data]'
GO
GRANT SELECT ON  [dbo].[WDC51102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WDC51102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WDC51102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WDC51102] TO [DYNGRP]
GO
