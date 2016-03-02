CREATE TABLE [dbo].[W200006]
(
[RPTNGYR] [smallint] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location_Address] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Delivery_Address] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Foreign_Address] [tinyint] NOT NULL,
[Foreign_StateProvince] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Foreign_Postal_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EPRIDNBR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Establishment_Number] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Employment_Code] [smallint] NOT NULL,
[Terminated_Business] [tinyint] NOT NULL,
[Agent_Indicator_Code] [smallint] NOT NULL,
[Agent_ID_Number] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Agent_for_EIN] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WAGEFILE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[INCLUDCO] [tinyint] NOT NULL,
[EMPW2TOT] [int] NOT NULL,
[EMPWTOC] [numeric] (19, 5) NOT NULL,
[EMPFEDTX] [numeric] (19, 5) NOT NULL,
[EMPSSWGS] [numeric] (19, 5) NOT NULL,
[EMPSSTIP] [numeric] (19, 5) NOT NULL,
[EMPSSTAX] [numeric] (19, 5) NOT NULL,
[EMPMEDWG] [numeric] (19, 5) NOT NULL,
[EMPMEDTX] [numeric] (19, 5) NOT NULL,
[Employer_EIC_Payments] [numeric] (19, 5) NOT NULL,
[Employer_Allocated_Tips] [numeric] (19, 5) NOT NULL,
[EmployerKind] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[W200006] ADD CONSTRAINT [CK__W200006__TIME1__73501C2F] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[W200006] ADD CONSTRAINT [CK__W200006__DATE1__725BF7F6] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[W200006] ADD CONSTRAINT [PKW200006] PRIMARY KEY CLUSTERED  ([RPTNGYR], [CMPANYID], [Employment_Code]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2W200006] ON [dbo].[W200006] ([RPTNGYR], [WAGEFILE], [CMPNYNAM], [Employment_Code], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[Location_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[Delivery_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[Foreign_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[Foreign_StateProvince]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[Foreign_Postal_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[EPRIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[Establishment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[Employment_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[Terminated_Business]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[Agent_Indicator_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[Agent_ID_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[Agent_for_EIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200006].[WAGEFILE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[W200006].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[W200006].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[INCLUDCO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[EMPW2TOT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[EMPWTOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[EMPFEDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[EMPSSWGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[EMPSSTIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[EMPSSTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[EMPMEDWG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[EMPMEDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[Employer_EIC_Payments]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[W200006].[Employer_Allocated_Tips]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200006].[EmployerKind]'
GO
GRANT SELECT ON  [dbo].[W200006] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[W200006] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[W200006] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[W200006] TO [DYNGRP]
GO
