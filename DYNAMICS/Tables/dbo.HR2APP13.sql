CREATE TABLE [dbo].[HR2APP13]
(
[APPLICANTNUMBER_I] [numeric] (19, 5) NOT NULL,
[ISEQUENCENUMBER_I] [smallint] NOT NULL,
[REFERENCENAME_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRELATIONSHIP_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPANY_I] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2APP13] ADD CONSTRAINT [CK__HR2APP13__CHANGE__43794DE0] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2APP13] ADD CONSTRAINT [PKHR2APP13] PRIMARY KEY CLUSTERED  ([APPLICANTNUMBER_I], [ISEQUENCENUMBER_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2APP13].[APPLICANTNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2APP13].[ISEQUENCENUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[REFERENCENAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[REFRELATIONSHIP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[COMPANY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[ZIPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[WORKPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR2APP13].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2APP13].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2APP13].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2APP13] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2APP13] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2APP13] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2APP13] TO [DYNGRP]
GO
