CREATE TABLE [dbo].[CM40102]
(
[SETUPKEY] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM40102] ADD CONSTRAINT [PKCM40102] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM40102].[SETUPKEY]'
GO
GRANT SELECT ON  [dbo].[CM40102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM40102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM40102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM40102] TO [DYNGRP]
GO
