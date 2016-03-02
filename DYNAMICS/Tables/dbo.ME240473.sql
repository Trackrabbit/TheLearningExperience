CREATE TABLE [dbo].[ME240473]
(
[ORD] [int] NOT NULL,
[Status] [smallint] NOT NULL,
[STRNG132] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Process_ID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240473] ADD CONSTRAINT [PKME240473] PRIMARY KEY NONCLUSTERED  ([USERID], [Process_ID], [Status], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240473].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240473].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240473].[STRNG132]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240473].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240473].[Process_ID]'
GO
GRANT SELECT ON  [dbo].[ME240473] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240473] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240473] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240473] TO [DYNGRP]
GO
