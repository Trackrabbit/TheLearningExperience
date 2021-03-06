CREATE TABLE [dbo].[SE000200]
(
[SGMTNUMB] [smallint] NOT NULL,
[SGMNTID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SE000200] ADD CONSTRAINT [PKSE000200] PRIMARY KEY CLUSTERED  ([SGMTNUMB], [SGMNTID], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000200].[SGMTNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE000200].[SGMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000200].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[SE000200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SE000200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SE000200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SE000200] TO [DYNGRP]
GO
