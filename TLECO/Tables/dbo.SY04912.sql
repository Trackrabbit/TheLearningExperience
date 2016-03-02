CREATE TABLE [dbo].[SY04912]
(
[Identity_Column] [int] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FilePath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ERROR] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04912] ADD CONSTRAINT [PKSY04912] PRIMARY KEY NONCLUSTERED  ([Identity_Column], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04912].[Identity_Column]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04912].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04912].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04912].[FilePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04912].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04912].[ERROR]'
GO
GRANT SELECT ON  [dbo].[SY04912] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04912] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04912] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04912] TO [DYNGRP]
GO
