CREATE TABLE [dbo].[duLCK]
(
[companyID] [smallint] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[duWorkstationID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[duLCK] ADD CONSTRAINT [PKduLCK] PRIMARY KEY NONCLUSTERED  ([companyID], [INTERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[duLCK].[companyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[duLCK].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[duLCK].[duWorkstationID]'
GO
GRANT SELECT ON  [dbo].[duLCK] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[duLCK] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[duLCK] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[duLCK] TO [DYNGRP]
GO
