CREATE TABLE [dbo].[SOP40101]
(
[SOPSTATUS] [smallint] NOT NULL,
[SOPSTSDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP40101] ADD CONSTRAINT [PKSOP40101] PRIMARY KEY CLUSTERED  ([SOPSTATUS]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP40101].[SOPSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP40101].[SOPSTSDESCR]'
GO
GRANT SELECT ON  [dbo].[SOP40101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP40101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP40101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP40101] TO [DYNGRP]
GO
