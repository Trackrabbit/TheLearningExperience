CREATE TABLE [dbo].[EXT20503]
(
[Extender_View_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[Field_ID] [int] NOT NULL,
[Field_ID_2] [int] NOT NULL,
[FIELDNAM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Field_Name_2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20503] ADD CONSTRAINT [PKEXT20503] PRIMARY KEY NONCLUSTERED  ([Extender_View_ID], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20503].[Extender_View_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20503].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[EXT20503].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20503].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20503].[Field_ID_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20503].[FIELDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20503].[Field_Name_2]'
GO
GRANT SELECT ON  [dbo].[EXT20503] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20503] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20503] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20503] TO [DYNGRP]
GO
