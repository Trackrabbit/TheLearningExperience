CREATE TABLE [dbo].[EXT20502]
(
[Extender_View_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[FIELDNAM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20502] ADD CONSTRAINT [PKEXT20502] PRIMARY KEY NONCLUSTERED  ([Extender_View_ID], [LNITMSEQ], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20502].[Extender_View_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20502].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20502].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20502].[FIELDNAM]'
GO
GRANT SELECT ON  [dbo].[EXT20502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20502] TO [DYNGRP]
GO
