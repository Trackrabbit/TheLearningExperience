CREATE TABLE [dbo].[SUSSTR]
(
[IINDEX_I] [smallint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SUSSTR] ADD CONSTRAINT [PKSUSSTR] PRIMARY KEY NONCLUSTERED  ([IINDEX_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SUSSTR].[IINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SUSSTR].[DSCRIPTN]'
GO
GRANT SELECT ON  [dbo].[SUSSTR] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SUSSTR] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SUSSTR] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SUSSTR] TO [DYNGRP]
GO
