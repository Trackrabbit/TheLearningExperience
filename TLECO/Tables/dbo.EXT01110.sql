CREATE TABLE [dbo].[EXT01110]
(
[Extender_Record_ID] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01110] ADD CONSTRAINT [PKEXT01110] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01110].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01110].[LNITMSEQ]'
GO
GRANT SELECT ON  [dbo].[EXT01110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01110] TO [DYNGRP]
GO
