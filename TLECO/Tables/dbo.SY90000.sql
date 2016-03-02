CREATE TABLE [dbo].[SY90000]
(
[ObjectType] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ObjectID] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PropertyName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PropertyValue] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY90000] ADD CONSTRAINT [PKSY90000] PRIMARY KEY NONCLUSTERED  ([ObjectType], [ObjectID], [PropertyName]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY90000] ON [dbo].[SY90000] ([ObjectType], [PropertyName], [PropertyValue], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90000].[ObjectType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90000].[ObjectID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90000].[PropertyName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90000].[PropertyValue]'
GO
GRANT SELECT ON  [dbo].[SY90000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY90000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY90000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY90000] TO [DYNGRP]
GO
