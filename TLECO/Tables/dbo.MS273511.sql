CREATE TABLE [dbo].[MS273511]
(
[MSO_ProgID_Prefix] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ProcessorID] [int] NOT NULL,
[MSO_ProcessorValue] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273511] ADD CONSTRAINT [PKMS273511] PRIMARY KEY CLUSTERED  ([MSO_ProgID_Prefix], [MSO_ProcessorID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273511].[MSO_ProgID_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273511].[MSO_ProcessorID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273511].[MSO_ProcessorValue]'
GO
GRANT SELECT ON  [dbo].[MS273511] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273511] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273511] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273511] TO [DYNGRP]
GO
