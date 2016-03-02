CREATE TABLE [dbo].[PM80960]
(
[ORD] [int] NOT NULL,
[Status] [smallint] NOT NULL,
[STRNG132] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Process_ID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM80960] ADD CONSTRAINT [PKPM80960] PRIMARY KEY NONCLUSTERED  ([USERID], [Process_ID], [Status], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80960].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80960].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80960].[STRNG132]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM80960].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM80960].[Process_ID]'
GO
GRANT SELECT ON  [dbo].[PM80960] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM80960] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM80960] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM80960] TO [DYNGRP]
GO
