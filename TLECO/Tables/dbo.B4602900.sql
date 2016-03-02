CREATE TABLE [dbo].[B4602900]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Payee_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Notice_Party_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LeaseTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_Prefix] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[VENDNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Facility_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Department_ID] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_L__2FECE5E0] CHECK ((datepart(hour,[BSSI_Lease_CommDT])=(0) AND datepart(minute,[BSSI_Lease_CommDT])=(0) AND datepart(second,[BSSI_Lease_CommDT])=(0) AND datepart(millisecond,[BSSI_Lease_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_L__2EF8C1A7] CHECK ((datepart(hour,[BSSI_Lease_Executed_Date])=(0) AND datepart(minute,[BSSI_Lease_Executed_Date])=(0) AND datepart(second,[BSSI_Lease_Executed_Date])=(0) AND datepart(millisecond,[BSSI_Lease_Executed_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_L__2D107935] CHECK ((datepart(hour,[BSSI_Lease_Execution_Dat])=(0) AND datepart(minute,[BSSI_Lease_Execution_Dat])=(0) AND datepart(second,[BSSI_Lease_Execution_Dat])=(0) AND datepart(millisecond,[BSSI_Lease_Execution_Dat])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_L__34B19AFD] CHECK ((datepart(hour,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Final_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_L__33BD76C4] CHECK ((datepart(hour,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Initial_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_L__35A5BF36] CHECK ((datepart(hour,[BSSI_Lease_Termination_D])=(0) AND datepart(minute,[BSSI_Lease_Termination_D])=(0) AND datepart(second,[BSSI_Lease_Termination_D])=(0) AND datepart(millisecond,[BSSI_Lease_Termination_D])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_P__30E10A19] CHECK ((datepart(hour,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(minute,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(second,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(millisecond,[BSSI_Proj_Lease_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_P__32C9528B] CHECK ((datepart(hour,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(minute,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(second,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(millisecond,[BSSI_Proj_Rent_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_P__2E049D6E] CHECK ((datepart(hour,[BSSI_Projected_Lease_Exe])=(0) AND datepart(minute,[BSSI_Projected_Lease_Exe])=(0) AND datepart(second,[BSSI_Projected_Lease_Exe])=(0) AND datepart(millisecond,[BSSI_Projected_Lease_Exe])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [CK__B4602900__BSSI_R__31D52E52] CHECK ((datepart(hour,[BSSI_Rent_Commencement_D])=(0) AND datepart(minute,[BSSI_Rent_Commencement_D])=(0) AND datepart(second,[BSSI_Rent_Commencement_D])=(0) AND datepart(millisecond,[BSSI_Rent_Commencement_D])=(0)))
GO
ALTER TABLE [dbo].[B4602900] ADD CONSTRAINT [PKB4602900] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7B4602900] ON [dbo].[B4602900] ([BSSI_PortfolioID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL8B4602900] ON [dbo].[B4602900] ([BSSI_Tenant_Lease_Status]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8B4602900] ON [dbo].[B4602900] ([BSSI_Tenant_Lease_Status], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602900] ON [dbo].[B4602900] ([LOCNCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B4602900] ON [dbo].[B4602900] ([LOCNDSCR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602900] ON [dbo].[B4602900] ([NAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602900] ON [dbo].[B4602900] ([VENDNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602900] ON [dbo].[B4602900] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Payee_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Notice_Party_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_LeaseTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Ground_Lease_Prefix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602900].[BSSI_Period_To_Period_Le]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602900].[BSSI_Unlimited_Renewals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602900].[BSSI_Prepaid_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Access_To_Space]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Access_To_Space_Not]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Sq_Ft_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Sq_Ft_Required_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602900].[BSSI_Tenant_Lease_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Lease_Execution_Dat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Lease_ExecNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Projected_Lease_Exe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Lease_Executed_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Lease_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Lease_CommNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Proj_Lease_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Rent_Commencement_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Rent_CommNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Proj_Rent_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Lease_Initial_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Lease_InitExpNoteIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Lease_Final_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Lease_FinNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602900].[BSSI_Lease_Termination_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Lease_TrmtNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Lease_Initial_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602900].[BSSI_Is_Holdover_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Is_Holdover_Fee_Not]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602900].[BSSI_Is_Termination_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602900].[BSSI_Is_Termination_Fee_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[VENDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Description1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Facility_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602900].[BSSI_Department_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602900].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4602900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602900] TO [DYNGRP]
GO
