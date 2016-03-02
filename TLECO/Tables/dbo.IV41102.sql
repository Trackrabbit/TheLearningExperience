CREATE TABLE [dbo].[IV41102]
(
[Landed_Cost_Group_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Landed_Cost_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV41102] ADD CONSTRAINT [PKIV41102] PRIMARY KEY NONCLUSTERED  ([Landed_Cost_Group_ID], [Landed_Cost_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV41102] ON [dbo].[IV41102] ([Landed_Cost_ID], [Landed_Cost_Group_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV41102].[Landed_Cost_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV41102].[Landed_Cost_ID]'
GO
GRANT SELECT ON  [dbo].[IV41102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV41102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV41102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV41102] TO [DYNGRP]
GO
