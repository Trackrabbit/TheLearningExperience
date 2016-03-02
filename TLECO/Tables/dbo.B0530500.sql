CREATE TABLE [dbo].[B0530500]
(
[BSSI_Capital_Call_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Owner_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Series_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[BSSI_Capital_Status_HDR] [smallint] NOT NULL,
[BSSI_Broker_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Call_AP_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Call_Amount] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[BSSI_CommPaymentMethod] [smallint] NOT NULL,
[BSSI_Commission_Type] [smallint] NOT NULL,
[BSSI_Commission_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Commission_Percent] [smallint] NOT NULL,
[BSSI_Fee_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Owner_Call_Date] [datetime] NOT NULL,
[BSSI_Owner_Info_Date] [datetime] NOT NULL,
[BSSI_Owner_Due_Date] [datetime] NOT NULL,
[BSSI_Owner_Maturity_Date] [datetime] NOT NULL,
[BSSI_Broker_Info_Date] [datetime] NOT NULL,
[BSSI_FundCallMaturityAmt] [numeric] (19, 5) NOT NULL,
[BSSI_Fund_Call_AP_Batch] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Call_AR_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Total_Investment_Am] [numeric] (19, 5) NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0530500] ADD CONSTRAINT [CK__B0530500__BSSI_B__461A8773] CHECK ((datepart(hour,[BSSI_Broker_Info_Date])=(0) AND datepart(minute,[BSSI_Broker_Info_Date])=(0) AND datepart(second,[BSSI_Broker_Info_Date])=(0) AND datepart(millisecond,[BSSI_Broker_Info_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530500] ADD CONSTRAINT [CK__B0530500__BSSI_O__4249F68F] CHECK ((datepart(hour,[BSSI_Owner_Call_Date])=(0) AND datepart(minute,[BSSI_Owner_Call_Date])=(0) AND datepart(second,[BSSI_Owner_Call_Date])=(0) AND datepart(millisecond,[BSSI_Owner_Call_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530500] ADD CONSTRAINT [CK__B0530500__BSSI_O__44323F01] CHECK ((datepart(hour,[BSSI_Owner_Due_Date])=(0) AND datepart(minute,[BSSI_Owner_Due_Date])=(0) AND datepart(second,[BSSI_Owner_Due_Date])=(0) AND datepart(millisecond,[BSSI_Owner_Due_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530500] ADD CONSTRAINT [CK__B0530500__BSSI_O__433E1AC8] CHECK ((datepart(hour,[BSSI_Owner_Info_Date])=(0) AND datepart(minute,[BSSI_Owner_Info_Date])=(0) AND datepart(second,[BSSI_Owner_Info_Date])=(0) AND datepart(millisecond,[BSSI_Owner_Info_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530500] ADD CONSTRAINT [CK__B0530500__BSSI_O__4526633A] CHECK ((datepart(hour,[BSSI_Owner_Maturity_Date])=(0) AND datepart(minute,[BSSI_Owner_Maturity_Date])=(0) AND datepart(second,[BSSI_Owner_Maturity_Date])=(0) AND datepart(millisecond,[BSSI_Owner_Maturity_Date])=(0)))
GO
ALTER TABLE [dbo].[B0530500] ADD CONSTRAINT [CK__B0530500__DOCDAT__4155D256] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B0530500] ADD CONSTRAINT [PKB0530500] PRIMARY KEY NONCLUSTERED  ([BSSI_Capital_Call_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0530500] ON [dbo].[B0530500] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[BSSI_Capital_Call_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[BSSI_Fund_Owner_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[MJW_Series_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530500].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530500].[BSSI_Capital_Status_HDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[BSSI_Broker_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[BSSI_Fund_Call_AP_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530500].[BSSI_Fund_Call_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530500].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530500].[BSSI_CommPaymentMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530500].[BSSI_Commission_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530500].[BSSI_Commission_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530500].[BSSI_Commission_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530500].[BSSI_Fee_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530500].[BSSI_Owner_Call_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530500].[BSSI_Owner_Info_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530500].[BSSI_Owner_Due_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530500].[BSSI_Owner_Maturity_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0530500].[BSSI_Broker_Info_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530500].[BSSI_FundCallMaturityAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[BSSI_Fund_Call_AP_Batch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[BSSI_Fund_Call_AR_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530500].[BSSI_Total_Investment_Am]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0530500].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0530500].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0530500].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B0530500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0530500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0530500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0530500] TO [DYNGRP]
GO
