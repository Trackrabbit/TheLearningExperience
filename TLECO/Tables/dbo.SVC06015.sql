CREATE TABLE [dbo].[SVC06015]
(
[ROUTEID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06015] ADD CONSTRAINT [PKSVC06015] PRIMARY KEY NONCLUSTERED  ([ROUTEID], [ITEMNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06015].[ROUTEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06015].[ITEMNMBR]'
GO
GRANT SELECT ON  [dbo].[SVC06015] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06015] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06015] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06015] TO [DYNGRP]
GO
