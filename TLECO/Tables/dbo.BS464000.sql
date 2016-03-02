CREATE TABLE [dbo].[BS464000]
(
[BSSI_OccupancyTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ExcludeFromGLA] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS464000] ADD CONSTRAINT [PKBS464000] PRIMARY KEY NONCLUSTERED  ([BSSI_OccupancyTypeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BS464000] ON [dbo].[BS464000] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS464000].[BSSI_OccupancyTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS464000].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS464000].[BSSI_ExcludeFromGLA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BS464000].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[BS464000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS464000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS464000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS464000] TO [DYNGRP]
GO
