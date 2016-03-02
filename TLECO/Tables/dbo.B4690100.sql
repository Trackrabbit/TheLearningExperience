CREATE TABLE [dbo].[B4690100]
(
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDATE] [datetime] NOT NULL,
[TYPEID] [smallint] NOT NULL,
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Master_Lease] [tinyint] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Payee_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Notice_Party_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LeaseTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__TIME1__78F1B6B1] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_C__05578D96] CHECK ((datepart(hour,[BSSI_Cancelled_Date])=(0) AND datepart(minute,[BSSI_Cancelled_Date])=(0) AND datepart(second,[BSSI_Cancelled_Date])=(0) AND datepart(millisecond,[BSSI_Cancelled_Date])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_I__064BB1CF] CHECK ((datepart(hour,[BSSI_Initial_Contact_Dat])=(0) AND datepart(minute,[BSSI_Initial_Contact_Dat])=(0) AND datepart(second,[BSSI_Initial_Contact_Dat])=(0) AND datepart(millisecond,[BSSI_Initial_Contact_Dat])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_L__7DB66BCE] CHECK ((datepart(hour,[BSSI_Lease_CommDT])=(0) AND datepart(minute,[BSSI_Lease_CommDT])=(0) AND datepart(second,[BSSI_Lease_CommDT])=(0) AND datepart(millisecond,[BSSI_Lease_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_L__7CC24795] CHECK ((datepart(hour,[BSSI_Lease_Executed_Date])=(0) AND datepart(minute,[BSSI_Lease_Executed_Date])=(0) AND datepart(second,[BSSI_Lease_Executed_Date])=(0) AND datepart(millisecond,[BSSI_Lease_Executed_Date])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_L__7AD9FF23] CHECK ((datepart(hour,[BSSI_Lease_Execution_Dat])=(0) AND datepart(minute,[BSSI_Lease_Execution_Dat])=(0) AND datepart(second,[BSSI_Lease_Execution_Dat])=(0) AND datepart(millisecond,[BSSI_Lease_Execution_Dat])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_L__027B20EB] CHECK ((datepart(hour,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Final_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Final_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_L__0186FCB2] CHECK ((datepart(hour,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(minute,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(second,[BSSI_Lease_Initial_ExpDT])=(0) AND datepart(millisecond,[BSSI_Lease_Initial_ExpDT])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_L__036F4524] CHECK ((datepart(hour,[BSSI_Lease_Termination_D])=(0) AND datepart(minute,[BSSI_Lease_Termination_D])=(0) AND datepart(second,[BSSI_Lease_Termination_D])=(0) AND datepart(millisecond,[BSSI_Lease_Termination_D])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_O__0463695D] CHECK ((datepart(hour,[BSSI_On_Hold_Date])=(0) AND datepart(minute,[BSSI_On_Hold_Date])=(0) AND datepart(second,[BSSI_On_Hold_Date])=(0) AND datepart(millisecond,[BSSI_On_Hold_Date])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_P__7EAA9007] CHECK ((datepart(hour,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(minute,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(second,[BSSI_Proj_Lease_CommDT])=(0) AND datepart(millisecond,[BSSI_Proj_Lease_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_P__0092D879] CHECK ((datepart(hour,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(minute,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(second,[BSSI_Proj_Rent_CommDT])=(0) AND datepart(millisecond,[BSSI_Proj_Rent_CommDT])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_P__7BCE235C] CHECK ((datepart(hour,[BSSI_Projected_Lease_Exe])=(0) AND datepart(minute,[BSSI_Projected_Lease_Exe])=(0) AND datepart(second,[BSSI_Projected_Lease_Exe])=(0) AND datepart(millisecond,[BSSI_Projected_Lease_Exe])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__BSSI_R__7F9EB440] CHECK ((datepart(hour,[BSSI_Rent_Commencement_D])=(0) AND datepart(minute,[BSSI_Rent_Commencement_D])=(0) AND datepart(second,[BSSI_Rent_Commencement_D])=(0) AND datepart(millisecond,[BSSI_Rent_Commencement_D])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__DATE1__77FD9278] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [CK__B4690100__USERDA__79E5DAEA] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[B4690100] ADD CONSTRAINT [PKB4690100] PRIMARY KEY NONCLUSTERED  ([LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[TYPEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Master_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[BSSI_Payee_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[BSSI_Notice_Party_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[BSSI_LeaseTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Period_To_Period_Le]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Unlimited_Renewals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Prepaid_Lease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[BSSI_Access_To_Space]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Access_To_Space_Not]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Sq_Ft_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Sq_Ft_Required_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Tenant_Lease_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Lease_Execution_Dat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Lease_ExecNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Projected_Lease_Exe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Lease_Executed_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Lease_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Lease_CommNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Proj_Lease_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Rent_Commencement_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Rent_CommNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Proj_Rent_CommDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Lease_Initial_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Lease_InitExpNoteIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Lease_Final_ExpDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Lease_FinNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Lease_Termination_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Lease_TrmtNoteIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Lease_Initial_Term]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Is_Holdover_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Is_Holdover_Fee_Not]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Is_Termination_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Is_Termination_Fee_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4690100].[LOCNDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_On_Hold_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_On_Hold_Date_Note_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Cancelled_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4690100].[BSSI_Cancelled_Date_Note]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4690100].[BSSI_Initial_Contact_Dat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4690100].[BSSI_Invoice_Alternate_T]'
GO
GRANT SELECT ON  [dbo].[B4690100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4690100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4690100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4690100] TO [DYNGRP]
GO
