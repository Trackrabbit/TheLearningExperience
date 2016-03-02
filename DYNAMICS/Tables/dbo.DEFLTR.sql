CREATE TABLE [dbo].[DEFLTR]
(
[RPRTNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DEFLTR] ADD CONSTRAINT [PKDEFLTR] PRIMARY KEY CLUSTERED  ([RPRTNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DEFLTR].[RPRTNAME]'
GO
GRANT SELECT ON  [dbo].[DEFLTR] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DEFLTR] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DEFLTR] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DEFLTR] TO [DYNGRP]
GO
