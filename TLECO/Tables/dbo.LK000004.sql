CREATE TABLE [dbo].[LK000004]
(
[LK_Group] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LK000004] ADD CONSTRAINT [PKLK000004] PRIMARY KEY CLUSTERED  ([LK_Group]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK000004].[LK_Group]'
GO
GRANT SELECT ON  [dbo].[LK000004] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LK000004] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LK000004] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LK000004] TO [DYNGRP]
GO