CREATE TABLE [dbo].[ALERT3RD]
(
[Language_ID] [smallint] NOT NULL,
[ERMSGNUM] [int] NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGLVL] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[ERMRINTX] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ALERT3RD] ADD CONSTRAINT [PKALERT3RD] PRIMARY KEY NONCLUSTERED  ([Language_ID], [ERMSGNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ALERT3RD].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ALERT3RD].[ERMSGNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ALERT3RD].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ALERT3RD].[ERMSGLVL]'
GO
GRANT SELECT ON  [dbo].[ALERT3RD] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ALERT3RD] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ALERT3RD] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ALERT3RD] TO [DYNGRP]
GO
