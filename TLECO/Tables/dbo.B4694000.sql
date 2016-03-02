CREATE TABLE [dbo].[B4694000]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Status] [smallint] NOT NULL,
[BSSI_Lease_Status_STR] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Status] [smallint] NOT NULL,
[BSSI_Site_Acquisition_Da] [datetime] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Billing_Frequency] [smallint] NOT NULL,
[BSSI_Charge_Escalation_A] [numeric] (19, 5) NOT NULL,
[BSSI_PrevCharge_EscAmt] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_EscAmtDiff] [numeric] (19, 5) NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Region_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Monthly_Rent_Roll] [numeric] (19, 5) NOT NULL,
[BSSI_Annual_Rent_Roll] [numeric] (19, 5) NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BSSI_Total_Leasable_Sq_F] [numeric] (19, 5) NOT NULL,
[BSSI_Total_Leasable_Sq_M] [numeric] (19, 5) NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rate] [numeric] (19, 5) NOT NULL,
[BSSI_Leased_Space_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Leased_Space_SM] [numeric] (19, 5) NOT NULL,
[BSSI_Deposit_Rent] [numeric] (19, 5) NOT NULL,
[BSSI_Site_TypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_nMarketRent] [numeric] (19, 5) NOT NULL,
[BSSI_Rent_Commencement_D] [datetime] NOT NULL,
[BSSI_Lease_Final_ExpDT] [datetime] NOT NULL,
[BSSI_Lease_Termination_D] [datetime] NOT NULL,
[BSSI_strMasterChargeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Is_Vacant] [tinyint] NOT NULL,
[BSSI_nTBDSqFeetActive] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDSqFeetOther] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDMarkRentActive] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDMarkRentOther] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDUnitsActive] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDUnitsOther] [numeric] (19, 5) NOT NULL,
[CUSTBLNC] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDUnits] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDUnitSqFeet] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDSqFeetOccActive] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDSqFeetOccOther] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDUnitOccActive] [numeric] (19, 5) NOT NULL,
[BSSI_nTBDUnitOccOther] [numeric] (19, 5) NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4694000] ADD CONSTRAINT [CK__B4694000__BSSI_L__5CA05C1D] CHECK ((datepart(hour,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Final_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4694000] ADD CONSTRAINT [CK__B4694000__BSSI_L__5D948056] CHECK ((datepart(hour,[BSSI_Lease_Termination_D])=(0) AND datepart(minute,[BSSI_Lease_Termination_D])=(0) AND datepart(second,[BSSI_Lease_Termination_D])=(0) AND datepart(millisecond,[BSSI_Lease_Termination_D])=(0)))
GO
ALTER TABLE [dbo].[B4694000] ADD CONSTRAINT [CK__B4694000__BSSI_R__5BAC37E4] CHECK ((datepart(hour,[BSSI_Rent_Commencement_D])=(0) AND datepart(minute,[BSSI_Rent_Commencement_D])=(0) AND datepart(second,[BSSI_Rent_Commencement_D])=(0) AND datepart(millisecond,[BSSI_Rent_Commencement_D])=(0)))
GO
ALTER TABLE [dbo].[B4694000] ADD CONSTRAINT [CK__B4694000__BSSI_S__58CFCB39] CHECK ((datepart(hour,[BSSI_Site_Acquisition_Da])=(0) AND datepart(minute,[BSSI_Site_Acquisition_Da])=(0) AND datepart(second,[BSSI_Site_Acquisition_Da])=(0) AND datepart(millisecond,[BSSI_Site_Acquisition_Da])=(0)))
GO
ALTER TABLE [dbo].[B4694000] ADD CONSTRAINT [CK__B4694000__ENDDAT__5AB813AB] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[B4694000] ADD CONSTRAINT [CK__B4694000__STRTDA__59C3EF72] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B4694000] ADD CONSTRAINT [PKB4694000] PRIMARY KEY NONCLUSTERED  ([USERID], [BSSI_PortfolioID], [LOCNCODE], [BSSI_Tenant_Lease_Number], [BSSI_Charge_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4694000] ON [dbo].[B4694000] ([LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4694000] ON [dbo].[B4694000] ([USERID], [BSSI_PortfolioID], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4694000] ON [dbo].[B4694000] ([USERID], [BSSI_PortfolioID], [CUSTNMBR], [LOCNCODE], [BSSI_Tenant_Lease_Number], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4694000] ON [dbo].[B4694000] ([USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4694000].[BSSI_Tenant_Lease_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_Lease_Status_STR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4694000].[BSSI_Site_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4694000].[BSSI_Site_Acquisition_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4694000].[BSSI_Billing_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Charge_Escalation_A]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_PrevCharge_EscAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Charge_EscAmtDiff]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_Region_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Monthly_Rent_Roll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Annual_Rent_Roll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4694000].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4694000].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Total_Leasable_Sq_F]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Total_Leasable_Sq_M]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_Description1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Rate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Leased_Space_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Leased_Space_SM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_Deposit_Rent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_Site_TypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nMarketRent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4694000].[BSSI_Rent_Commencement_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4694000].[BSSI_Lease_Final_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4694000].[BSSI_Lease_Termination_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[BSSI_strMasterChargeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4694000].[BSSI_Is_Vacant]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDSqFeetActive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDSqFeetOther]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDMarkRentActive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDMarkRentOther]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDUnitsActive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDUnitsOther]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[CUSTBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDUnits]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDUnitSqFeet]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDSqFeetOccActive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDSqFeetOccOther]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDUnitOccActive]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4694000].[BSSI_nTBDUnitOccOther]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4694000].[DUMYRCRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4694000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4694000].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4694000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4694000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4694000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4694000] TO [DYNGRP]
GO
