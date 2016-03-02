CREATE TABLE [dbo].[IVC50100]
(
[Restrict_Type] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[INVCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IVC50100] ADD CONSTRAINT [PKIVC50100] PRIMARY KEY NONCLUSTERED  ([USERID], [SEQNUMBR], [Restrict_Type], [DOCTYPE], [INVCNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC50100].[Restrict_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC50100].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC50100].[INVCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC50100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC50100].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[IVC50100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVC50100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVC50100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVC50100] TO [DYNGRP]
GO
