CREATE TABLE [dbo].[SVC00960]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ANI_Number] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00960] ADD CONSTRAINT [PKSVC00960] PRIMARY KEY CLUSTERED  ([CUSTNMBR], [ADRSCODE], [LASTNAME], [FRSTNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00960] ON [dbo].[SVC00960] ([ANI_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00960] ON [dbo].[SVC00960] ([FRSTNAME], [LASTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00960] ON [dbo].[SVC00960] ([LASTNAME], [FRSTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00960] ON [dbo].[SVC00960] ([PHONNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[ANI_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00960].[EMail]'
GO
GRANT SELECT ON  [dbo].[SVC00960] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00960] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00960] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00960] TO [DYNGRP]
GO