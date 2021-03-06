CREATE TABLE [dbo].[SOP40600]
(
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP40600] ADD CONSTRAINT [PKSOP40600] PRIMARY KEY NONCLUSTERED  ([CURNCYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40600].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40600].[DECPLCUR]'
GO
GRANT SELECT ON  [dbo].[SOP40600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP40600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP40600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40600] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP40600] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP40600] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP40600] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40600] TO [RAPIDGRP]
GO
