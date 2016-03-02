CREATE TABLE [dbo].[RV030121]
(
[REVIEWWORDSETINDEX_I] [int] NOT NULL,
[REVWORDSETPNAM_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RV030121] ADD CONSTRAINT [PKRV030121] PRIMARY KEY CLUSTERED  ([REVIEWWORDSETINDEX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RV030121] ON [dbo].[RV030121] ([REVWORDSETPNAM_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV030121].[REVIEWWORDSETINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV030121].[REVWORDSETPNAM_I]'
GO
GRANT SELECT ON  [dbo].[RV030121] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RV030121] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RV030121] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RV030121] TO [DYNGRP]
GO