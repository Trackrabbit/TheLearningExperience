CREATE TABLE [dbo].[B4602200]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Master_Lease] [tinyint] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Payee_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Notice_Party_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LeaseTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Period_To_Period_Le] [smallint] NOT NULL,
[BSSI_Unlimited_Renewals] [smallint] NOT NULL,
[BSSI_Prepaid_Lease] [smallint] NOT NULL,
[BSSI_Access_To_Space] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Access_To_Space_Not] [numeric] (19, 5) NOT NULL,
[BSSI_Sq_Ft_Required] [numeric] (19, 5) NOT NULL,
[BSSI_Sq_Ft_Required_Note] [numeric] (19, 5) NOT NULL,
[BSSI_Tenant_Lease_Status] [smallint] NOT NULL,
[BSSI_Lease_Execution_Dat] [datetime] NOT NULL,
[BSSI_Lease_ExecNoteIndex] [numeric] (19, 5) NOT NULL,
[BSSI_Projected_Lease_Exe] [datetime] NOT NULL,
[BSSI_Lease_Executed_Date] [datetime] NOT NULL,
[BSSI_Lease_CommDT] [datetime] NOT NULL,
[BSSI_Lease_CommNoteIndex] [numeric] (19, 5) NOT NULL,
[BSSI_Proj_Lease_CommDT] [datetime] NOT NULL,
[BSSI_Rent_Commencement_D] [datetime] NOT NULL,
[BSSI_Rent_CommNoteIndex] [numeric] (19, 5) NOT NULL,
[BSSI_Proj_Rent_CommDT] [datetime] NOT NULL,
[BSSI_Lease_Initial_ExpDT] [datetime] NOT NULL,
[BSSI_Lease_InitExpNoteIn] [numeric] (19, 5) NOT NULL,
[BSSI_Lease_Final_ExpDT] [datetime] NOT NULL,
[BSSI_Lease_FinNoteIndex] [numeric] (19, 5) NOT NULL,
[BSSI_Lease_Termination_D] [datetime] NOT NULL,
[BSSI_Lease_TrmtNoteIndex] [numeric] (19, 5) NOT NULL,
[BSSI_Lease_Initial_Term] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Holdover_Fee] [smallint] NOT NULL,
[BSSI_Is_Holdover_Fee_Not] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Termination_Fee] [smallint] NOT NULL,
[BSSI_Is_Termination_Fee_] [numeric] (19, 5) NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_On_Hold_Date] [datetime] NOT NULL,
[BSSI_On_Hold_Date_Note_I] [numeric] (19, 5) NOT NULL,
[BSSI_Cancelled_Date] [datetime] NOT NULL,
[BSSI_Cancelled_Date_Note] [numeric] (19, 5) NOT NULL,
[BSSI_Initial_Contact_Dat] [datetime] NOT NULL,
[BSSI_Invoice_Alternate_T] [tinyint] NOT NULL,
[BSSI_Customer_Site_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Customer_Type] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Department_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SICCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Consolidate] [tinyint] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_C__773456C8] CHECK ((datepart(hour,[BSSI_Cancelled_Date])=(0) AND datepart(minute,[BSSI_Cancelled_Date])=(0) AND datepart(second,[BSSI_Cancelled_Date])=(0) AND datepart(millisecond,[BSSI_Cancelled_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_I__78287B01] CHECK ((datepart(hour,[BSSI_Initial_Contact_Dat])=(0) AND datepart(minute,[BSSI_Initial_Contact_Dat])=(0) AND datepart(second,[BSSI_Initial_Contact_Dat])=(0) AND datepart(millisecond,[BSSI_Initial_Contact_Dat])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_L__6F933500] CHECK ((datepart(hour,[BSSI_Lease_CommDT])=(0) AND datepart(minute,[BSSI_Lease_CommDT])=(0) AND datepart(second,[BSSI_Lease_CommDT])=(0) AND datepart(millisecond,[BSSI_Lease_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_L__6E9F10C7] CHECK ((datepart(hour,[BSSI_Lease_Executed_Date])=(0) AND datepart(minute,[BSSI_Lease_Executed_Date])=(0) AND datepart(second,[BSSI_Lease_Executed_Date])=(0) AND datepart(millisecond,[BSSI_Lease_Executed_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_L__6CB6C855] CHECK ((datepart(hour,[BSSI_Lease_Execution_Dat])=(0) AND datepart(minute,[BSSI_Lease_Execution_Dat])=(0) AND datepart(second,[BSSI_Lease_Execution_Dat])=(0) AND datepart(millisecond,[BSSI_Lease_Execution_Dat])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_L__7457EA1D] CHECK ((datepart(hour,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Final_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_L__7363C5E4] CHECK ((datepart(hour,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Initial_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_L__754C0E56] CHECK ((datepart(hour,[BSSI_Lease_Termination_D])=(0) AND datepart(minute,[BSSI_Lease_Termination_D])=(0) AND datepart(second,[BSSI_Lease_Termination_D])=(0) AND datepart(millisecond,[BSSI_Lease_Termination_D])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_O__7640328F] CHECK ((datepart(hour,[BSSI_On_Hold_Date])=(0) AND datepart(minute,[BSSI_On_Hold_Date])=(0) AND datepart(second,[BSSI_On_Hold_Date])=(0) AND datepart(millisecond,[BSSI_On_Hold_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_P__70875939] CHECK ((datepart(hour,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(minute,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(second,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(millisecond,[BSSI_Proj_Lease_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_P__726FA1AB] CHECK ((datepart(hour,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(minute,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(second,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(millisecond,[BSSI_Proj_Rent_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_P__6DAAEC8E] CHECK ((datepart(hour,[BSSI_Projected_Lease_Exe])=(0) AND datepart(minute,[BSSI_Projected_Lease_Exe])=(0) AND datepart(second,[BSSI_Projected_Lease_Exe])=(0) AND datepart(millisecond,[BSSI_Projected_Lease_Exe])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [CK__B4602200__BSSI_R__717B7D72] CHECK ((datepart(hour,[BSSI_Rent_Commencement_D])=(0) AND datepart(minute,[BSSI_Rent_Commencement_D])=(0) AND datepart(second,[BSSI_Rent_Commencement_D])=(0) AND datepart(millisecond,[BSSI_Rent_Commencement_D])=(0)))
GO
ALTER TABLE [dbo].[B4602200] ADD CONSTRAINT [PKB4602200] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9B4602200] ON [dbo].[B4602200] ([BSSI_Description1], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602200] ON [dbo].[B4602200] ([BSSI_Master_Lease], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4602200] ON [dbo].[B4602200] ([BSSI_PortfolioID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL10B4602200] ON [dbo].[B4602200] ([BSSI_Tenant_Lease_Status]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK10B4602200] ON [dbo].[B4602200] ([BSSI_Tenant_Lease_Status], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4602200] ON [dbo].[B4602200] ([CUSTNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602200] ON [dbo].[B4602200] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602200] ON [dbo].[B4602200] ([LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4602200] ON [dbo].[B4602200] ([LOCNDSCR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602200] ON [dbo].[B4602200] ([NAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Master_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Description1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Payee_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Notice_Party_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_LeaseTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Tenant_Lease_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Period_To_Period_Le]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Unlimited_Renewals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Prepaid_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Access_To_Space]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Access_To_Space_Not]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Sq_Ft_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Sq_Ft_Required_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Tenant_Lease_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Lease_Execution_Dat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Lease_ExecNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Projected_Lease_Exe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Lease_Executed_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Lease_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Lease_CommNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Proj_Lease_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Rent_Commencement_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Rent_CommNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Proj_Rent_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Lease_Initial_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Lease_InitExpNoteIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Lease_Final_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Lease_FinNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Lease_Termination_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Lease_TrmtNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Lease_Initial_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Is_Holdover_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Is_Holdover_Fee_Not]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Is_Termination_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Is_Termination_Fee_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_On_Hold_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_On_Hold_Date_Note_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Cancelled_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602200].[BSSI_Cancelled_Date_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602200].[BSSI_Initial_Contact_Dat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Invoice_Alternate_T]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Customer_Site_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Customer_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_Department_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602200].[BSSI_SICCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Consolidate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602200].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4602200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602200] TO [DYNGRP]
GO
