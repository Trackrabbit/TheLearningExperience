CREATE TABLE [dbo].[SY80000]
(
[MODULEID] [smallint] NOT NULL,
[MODOPTIONS] [binary] (4) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY80000] ADD CONSTRAINT [PKSY80000] PRIMARY KEY NONCLUSTERED  ([MODULEID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY80000].[MODULEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY80000].[MODOPTIONS]'
GO
GRANT SELECT ON  [dbo].[SY80000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY80000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY80000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY80000] TO [DYNGRP]
GO
