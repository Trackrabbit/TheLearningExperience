CREATE TABLE [dbo].[UPR42503]
(
[Batch_Prefix] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR42503] ADD CONSTRAINT [PKUPR42503] PRIMARY KEY NONCLUSTERED  ([Batch_Prefix], [JOBTITLE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR42503] ON [dbo].[UPR42503] ([JOBTITLE], [Batch_Prefix]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42503].[Batch_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR42503].[JOBTITLE]'
GO
GRANT SELECT ON  [dbo].[UPR42503] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR42503] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR42503] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR42503] TO [DYNGRP]
GO