CREATE TABLE [dbo].[SY003001]
(
[MXLACNUM] [smallint] NOT NULL,
[MXNUMSEG] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY003001] ADD CONSTRAINT [PKSY003001] PRIMARY KEY NONCLUSTERED  ([MXLACNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY003001].[MXLACNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY003001].[MXNUMSEG]'
GO
GRANT SELECT ON  [dbo].[SY003001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY003001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY003001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY003001] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY003001] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY003001] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY003001] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY003001] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[SY003001] TO [rpt_all user]
GO
