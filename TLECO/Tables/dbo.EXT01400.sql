CREATE TABLE [dbo].[EXT01400]
(
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Record_ID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01400] ADD CONSTRAINT [PKEXT01400] PRIMARY KEY NONCLUSTERED  ([DOCNUMBR], [Extender_Record_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01400].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01400].[Extender_Record_ID]'
GO
GRANT SELECT ON  [dbo].[EXT01400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01400] TO [DYNGRP]
GO
