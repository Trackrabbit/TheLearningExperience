CREATE TABLE [dbo].[EXT01111]
(
[Extender_Record_ID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01111] ADD CONSTRAINT [PKEXT01111] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [LNITMSEQ], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01111].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01111].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01111].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01111].[STRGA255]'
GO
GRANT SELECT ON  [dbo].[EXT01111] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01111] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01111] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01111] TO [DYNGRP]
GO
