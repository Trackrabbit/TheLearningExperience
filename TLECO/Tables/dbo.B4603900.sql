CREATE TABLE [dbo].[B4603900]
(
[BSSI_Amenity_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Work_Order_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Next_Work_Order_Num] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Contact_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Address_Option] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Priority_Code_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Maintenance_Code_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Provider_Type] [smallint] NOT NULL,
[BSSI_Equipment_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Equipment_Origin] [smallint] NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USER2ENT] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[BSSI_Work__Order_Referan] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Work_Order_Status] [smallint] NOT NULL,
[BSSI_Is_Signed_Off] [tinyint] NOT NULL,
[BSSI_Date_Signed_Off] [datetime] NOT NULL,
[BSSI_Provider_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Scheduled_Date] [datetime] NOT NULL,
[BSSI_Issued_Date] [datetime] NOT NULL,
[BSSI_Estimated_Cost] [numeric] (19, 5) NOT NULL,
[BSSI_Estimated_Effort] [numeric] (19, 5) NOT NULL,
[BSSI_Actual_Cost] [numeric] (19, 5) NOT NULL,
[BSSI_Actual_Effort] [numeric] (19, 5) NOT NULL,
[BSSI_Billed_Cost] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Index] [int] NOT NULL,
[BSSI_Lease_Origin] [smallint] NOT NULL,
[BSSI_Asset_Suffix] [smallint] NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Department_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Work_Required] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Work_Performed] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Acknowledgement] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4603900] ADD CONSTRAINT [CK__B4603900__TIME1__45BCF6C5] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B4603900] ADD CONSTRAINT [CK__B4603900__BSSI_D__46B11AFE] CHECK ((datepart(hour,[BSSI_Date_Signed_Off])=(0) AND datepart(minute,[BSSI_Date_Signed_Off])=(0) AND datepart(second,[BSSI_Date_Signed_Off])=(0) AND datepart(millisecond,[BSSI_Date_Signed_Off])=(0)))
GO
ALTER TABLE [dbo].[B4603900] ADD CONSTRAINT [CK__B4603900__BSSI_I__48996370] CHECK ((datepart(hour,[BSSI_Issued_Date])=(0) AND datepart(minute,[BSSI_Issued_Date])=(0) AND datepart(second,[BSSI_Issued_Date])=(0) AND datepart(millisecond,[BSSI_Issued_Date])=(0)))
GO
ALTER TABLE [dbo].[B4603900] ADD CONSTRAINT [CK__B4603900__BSSI_S__47A53F37] CHECK ((datepart(hour,[BSSI_Scheduled_Date])=(0) AND datepart(minute,[BSSI_Scheduled_Date])=(0) AND datepart(second,[BSSI_Scheduled_Date])=(0) AND datepart(millisecond,[BSSI_Scheduled_Date])=(0)))
GO
ALTER TABLE [dbo].[B4603900] ADD CONSTRAINT [CK__B4603900__DATE1__44C8D28C] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4603900] ADD CONSTRAINT [PKB4603900] PRIMARY KEY NONCLUSTERED  ([BSSI_Work_Order_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4603900] ON [dbo].[B4603900] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4603900] ON [dbo].[B4603900] ([BSSI_Work__Order_Referan], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Amenity_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Work_Order_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Next_Work_Order_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Contact_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Address_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Priority_Code_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Maintenance_Code_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Provider_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Equipment_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Equipment_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[USER2ENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603900].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603900].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Work__Order_Referan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Work_Order_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Is_Signed_Off]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603900].[BSSI_Date_Signed_Off]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Provider_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603900].[BSSI_Scheduled_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4603900].[BSSI_Issued_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603900].[BSSI_Estimated_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603900].[BSSI_Estimated_Effort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603900].[BSSI_Actual_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603900].[BSSI_Actual_Effort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603900].[BSSI_Billed_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4603900].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Lease_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4603900].[BSSI_Asset_Suffix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4603900].[BSSI_Department_ID]'
GO
GRANT SELECT ON  [dbo].[B4603900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4603900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4603900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4603900] TO [DYNGRP]
GO
