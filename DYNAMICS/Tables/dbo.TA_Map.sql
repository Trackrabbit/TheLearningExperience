CREATE TABLE [dbo].[TA_Map]
(
[MASTERDB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPLICATE_TO_DB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Accounts] [smallint] NOT NULL,
[Vendors] [smallint] NOT NULL,
[Customers] [smallint] NOT NULL,
[Items] [smallint] NOT NULL,
[Employees] [smallint] NOT NULL,
[UserDefined1] [smallint] NOT NULL,
[UserDefined2] [smallint] NOT NULL,
[UserDefinedString] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TA_Map] ADD CONSTRAINT [PKTA_Map] PRIMARY KEY NONCLUSTERED  ([MASTERDB], [REPLICATE_TO_DB]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TA_Map].[MASTERDB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TA_Map].[REPLICATE_TO_DB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA_Map].[Accounts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA_Map].[Vendors]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA_Map].[Customers]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA_Map].[Items]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA_Map].[Employees]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA_Map].[UserDefined1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TA_Map].[UserDefined2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TA_Map].[UserDefinedString]'
GO
GRANT SELECT ON  [dbo].[TA_Map] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TA_Map] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TA_Map] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TA_Map] TO [DYNGRP]
GO
