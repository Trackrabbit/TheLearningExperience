CREATE TABLE [dbo].[UPR10100]
(
[RPTNGYR] [smallint] NOT NULL,
[EPRIDNBR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YENDCRTD] [tinyint] NOT NULL,
[ESTIDNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACW2RN] [tinyint] NOT NULL,
[YEPRW2SK] [smallint] NOT NULL,
[YPMQGEW2] [smallint] NOT NULL,
[YP1099RS] [smallint] NOT NULL,
[FICASSTR] [int] NOT NULL,
[FICASSWL] [numeric] (19, 5) NOT NULL,
[TICAMTRT] [int] NOT NULL,
[FICAMWLM] [numeric] (19, 5) NOT NULL,
[EICMXWHG] [numeric] (19, 5) NOT NULL,
[Establishment_Type] [smallint] NOT NULL,
[Establishment_Number] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Charged_Tips] [numeric] (19, 5) NOT NULL,
[Charged_Receipts] [numeric] (19, 5) NOT NULL,
[Indirect_Tips] [numeric] (19, 5) NOT NULL,
[Direct_Tips] [numeric] (19, 5) NOT NULL,
[RECEIPTS] [numeric] (19, 5) NOT NULL,
[Directly_Tipped] [smallint] NOT NULL,
[Return_Type] [smallint] NOT NULL,
[Reported_Tips] [numeric] (19, 5) NOT NULL,
[ALOCTIPS] [numeric] (19, 5) NOT NULL,
[EmployerKind] [smallint] NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Employer_SelfInsured] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10100] ADD CONSTRAINT [PKUPR10100] PRIMARY KEY NONCLUSTERED  ([RPTNGYR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10100] ON [dbo].[UPR10100] ([YENDCRTD], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[EPRIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[YENDCRTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[ESTIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[INACW2RN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[YEPRW2SK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[YPMQGEW2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[YP1099RS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[FICASSTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[FICASSWL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[TICAMTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[FICAMWLM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[EICMXWHG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[Establishment_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[Establishment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[Charged_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[Charged_Receipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[Indirect_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[Direct_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[RECEIPTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[Directly_Tipped]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[Return_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[Reported_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10100].[ALOCTIPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[EmployerKind]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10100].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10100].[Employer_SelfInsured]'
GO
GRANT SELECT ON  [dbo].[UPR10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10100] TO [DYNGRP]
GO
