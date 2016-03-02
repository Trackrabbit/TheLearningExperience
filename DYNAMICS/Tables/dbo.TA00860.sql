CREATE TABLE [dbo].[TA00860]
(
[TAVersionMajor] [smallint] NOT NULL,
[TAVersionMinor] [smallint] NOT NULL,
[TABuild] [smallint] NOT NULL,
[companyID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TA00860] ADD CONSTRAINT [PKTA00860] PRIMARY KEY NONCLUSTERED  ([companyID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2TA00860] ON [dbo].[TA00860] ([TAVersionMajor], [TAVersionMinor], [TABuild], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA00860].[TAVersionMajor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA00860].[TAVersionMinor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA00860].[TABuild]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA00860].[companyID]'
GO
GRANT SELECT ON  [dbo].[TA00860] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TA00860] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TA00860] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TA00860] TO [DYNGRP]
GO
