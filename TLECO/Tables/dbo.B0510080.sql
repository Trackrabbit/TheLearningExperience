CREATE TABLE [dbo].[B0510080]
(
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510080] ADD CONSTRAINT [PKB0510080] PRIMARY KEY CLUSTERED  ([MJW_Offering_ID], [MJW_Series_ID], [MJW_Series_Address_Code]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[MJW_Series_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510080].[FAXNUMBR]'
GO
GRANT SELECT ON  [dbo].[B0510080] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510080] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510080] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510080] TO [DYNGRP]
GO
