CREATE TABLE [dbo].[SLB80000]
(
[RCRDTYPE] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Security_Role] [smallint] NOT NULL,
[ENABLED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SLB80000] ADD CONSTRAINT [PKSLB80000] PRIMARY KEY NONCLUSTERED  ([RCRDTYPE], [USERID], [Security_Role]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB80000].[RCRDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SLB80000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB80000].[Security_Role]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SLB80000].[ENABLED]'
GO
GRANT SELECT ON  [dbo].[SLB80000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SLB80000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SLB80000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SLB80000] TO [DYNGRP]
GO
