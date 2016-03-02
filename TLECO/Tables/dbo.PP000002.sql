CREATE TABLE [dbo].[PP000002]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[TYPEID] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000002] ADD CONSTRAINT [PKPP000002] PRIMARY KEY NONCLUSTERED  ([USERID], [SERIES], [TYPEID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000002].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000002].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000002].[TYPEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000002].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000002].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000002].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[PP000002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000002] TO [DYNGRP]
GO
