CREATE TABLE [dbo].[HR2DIV02]
(
[COMPANYCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISION_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE10_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXT_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBERI_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMAILADDRESS_I] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2DIV02] ADD CONSTRAINT [CK__HR2DIV02__CHANGE__31638C2C] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2DIV02] ADD CONSTRAINT [PKHR2DIV02] PRIMARY KEY CLUSTERED  ([DIVISIONCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[COMPANYCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[DIVISION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[ZIPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[PHONE10_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[EXT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[FAXNUMBERI_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[EMAILADDRESS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2DIV02].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2DIV02].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2DIV02].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2DIV02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2DIV02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2DIV02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2DIV02] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[HR2DIV02] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[HR2DIV02] TO [rpt_human resource administrator]
GO
