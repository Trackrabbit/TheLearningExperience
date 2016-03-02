CREATE TABLE [dbo].[EXT21000]
(
[Extender_Solution_ID] [int] NOT NULL,
[Extender_Solution_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT21000] ADD CONSTRAINT [CK__EXT21000__CREATD__6C47566A] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[EXT21000] ADD CONSTRAINT [CK__EXT21000__MODIFD__6D3B7AA3] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[EXT21000] ADD CONSTRAINT [PKEXT21000] PRIMARY KEY NONCLUSTERED  ([Extender_Solution_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT21000] ON [dbo].[EXT21000] ([Extender_Solution_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT21000].[Extender_Solution_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT21000].[Extender_Solution_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT21000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT21000].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[EXT21000].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT21000].[MDFUSRID]'
GO
GRANT SELECT ON  [dbo].[EXT21000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT21000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT21000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT21000] TO [DYNGRP]
GO
