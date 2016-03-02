CREATE TABLE [dbo].[W200005]
(
[RPTNGYR] [smallint] NOT NULL,
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
[Submitter_Name] [char] (57) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_Location_Addre] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_Delivery_Addre] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_City] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_State_Code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_Zip_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_Foreign_Addres] [tinyint] NOT NULL,
[Submitter_Foreign_StateP] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_Foreign_Postal] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_Country_Code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Submitter_EIN] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Method_of_Notification] [smallint] NOT NULL,
[Preparer_Code] [smallint] NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MMREFPIN] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[W200005] ADD CONSTRAINT [PKW200005] PRIMARY KEY CLUSTERED  ([RPTNGYR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200005].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Location_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Delivery_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200005].[Foreign_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Foreign_StateProvince]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Foreign_Postal_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_Location_Addre]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_Delivery_Addre]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_City]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_State_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_Zip_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200005].[Submitter_Foreign_Addres]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_Foreign_StateP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_Foreign_Postal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_Country_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[Submitter_EIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200005].[Method_of_Notification]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200005].[Preparer_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200005].[MMREFPIN]'
GO
GRANT SELECT ON  [dbo].[W200005] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[W200005] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[W200005] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[W200005] TO [DYNGRP]
GO
