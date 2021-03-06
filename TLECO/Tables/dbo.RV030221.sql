CREATE TABLE [dbo].[RV030221]
(
[REVIEWWORDSETINDEX_I] [int] NOT NULL,
[SEQORDER_I] [smallint] NOT NULL,
[REVIEWRATINGWORD_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RV030221] ADD CONSTRAINT [PKRV030221] PRIMARY KEY CLUSTERED  ([REVIEWWORDSETINDEX_I], [SEQORDER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV030221].[REVIEWWORDSETINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV030221].[SEQORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV030221].[REVIEWRATINGWORD_I]'
GO
GRANT SELECT ON  [dbo].[RV030221] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RV030221] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RV030221] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RV030221] TO [DYNGRP]
GO
