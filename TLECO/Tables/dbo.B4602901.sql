CREATE TABLE [dbo].[B4602901]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Required_Remove_Tow] [smallint] NOT NULL,
[BSSI_Required_Remove_TNI] [numeric] (19, 5) NOT NULL,
[BSSI_Asset_Retirement_Re] [smallint] NOT NULL,
[BSSI_ARR_Note_Index] [numeric] (19, 5) NOT NULL,
[BSSI_Ownership_Revert] [smallint] NOT NULL,
[BSSI_Ownershp_Revert_NI1] [numeric] (19, 5) NOT NULL,
[BSSI_Ownership_ARO] [numeric] (19, 5) NOT NULL,
[BSSI_Ownership_ARO_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Consent_To_Sublease] [smallint] NOT NULL,
[BSSI_ConsentForSRNI] [numeric] (19, 5) NOT NULL,
[BSSI_Landlord_Notice_Sub] [smallint] NOT NULL,
[BSSI_LLN_Sublease_NI] [numeric] (19, 5) NOT NULL,
[BSSILLRightOfFirstRefusa] [smallint] NOT NULL,
[BSSI_LLR_1st_RefusalNI] [numeric] (19, 5) NOT NULL,
[BSSI_Rev_Share] [smallint] NOT NULL,
[BSSI_Rev_Share_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Escal_CPI] [smallint] NOT NULL,
[BSSI_Is_Escal_CPI_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Escal_Lesser] [smallint] NOT NULL,
[BSSI_Is_Escal_Lesser_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Can_Term_1st_Cur] [smallint] NOT NULL,
[BSSI_Can_Term_1st_Cur_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Can_Term_1_Cur_Date] [datetime] NOT NULL,
[BSSI_Can_Term_Cur_DateNI] [numeric] (19, 5) NOT NULL,
[BSSI_Rent_RevSharingPay] [smallint] NOT NULL,
[BSSI_Rent_CRSP_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_RentAbateFree] [smallint] NOT NULL,
[BSSI_Is_RentAbateFree_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Com_Term_Rights] [smallint] NOT NULL,
[BSSI_Com_Term_Rights_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Termination_Fee] [smallint] NOT NULL,
[BSSI_Is_Termination_Fee_] [numeric] (19, 5) NOT NULL,
[BSSI_Term_Fee_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Term_Fee_Amt_NI] [numeric] (19, 5) NOT NULL,
[BSSI_LL_Term_Rights] [smallint] NOT NULL,
[BSSI_LL_Term_Rights_NI] [numeric] (19, 5) NOT NULL,
[BSSI_TerminateRightDate] [datetime] NOT NULL,
[BSSI_Term_RED_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Notice_Required_Ter] [smallint] NOT NULL,
[BSSI_Landlord_Notice_Req] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Landlord_Consent_Re] [smallint] NOT NULL,
[BSSI_Landlord_Consent_NI] [numeric] (19, 5) NOT NULL,
[BSSI_COC_Notice_Period] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_COC_Notice_Period_N] [numeric] (19, 5) NOT NULL,
[BSSI_GL_Mortgage] [smallint] NOT NULL,
[BSSI_Diamond_Mortgage] [smallint] NOT NULL,
[BSSI_assign_affiliates] [smallint] NOT NULL,
[BSSI_Landlord_AssignNI] [numeric] (19, 5) NOT NULL,
[BSSI_GL_Mortgate_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Company_Mortgage_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Notice_Term_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Assign_Affiliates_N] [numeric] (19, 5) NOT NULL,
[BSSI_Notice_Assign_NI] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Comments] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602901] ADD CONSTRAINT [CK__B4602901__BSSI_C__2114B6A4] CHECK ((datepart(hour,[BSSI_Can_Term_1_Cur_Date])=(0) AND datepart(minute,[BSSI_Can_Term_1_Cur_Date])=(0) AND datepart(second,[BSSI_Can_Term_1_Cur_Date])=(0) AND datepart(millisecond,[BSSI_Can_Term_1_Cur_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602901] ADD CONSTRAINT [CK__B4602901__BSSI_T__2208DADD] CHECK ((datepart(hour,[BSSI_TerminateRightDate])=(0) AND datepart(minute,[BSSI_TerminateRightDate])=(0) AND datepart(second,[BSSI_TerminateRightDate])=(0) AND datepart(millisecond,[BSSI_TerminateRightDate])=(0)))
GO
ALTER TABLE [dbo].[B4602901] ADD CONSTRAINT [PKB4602901] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602901].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Required_Remove_Tow]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Required_Remove_TNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Asset_Retirement_Re]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_ARR_Note_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Ownership_Revert]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Ownershp_Revert_NI1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Ownership_ARO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Ownership_ARO_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Consent_To_Sublease]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_ConsentForSRNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Landlord_Notice_Sub]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_LLN_Sublease_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSILLRightOfFirstRefusa]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_LLR_1st_RefusalNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Rev_Share]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Rev_Share_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Is_Escal_CPI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Is_Escal_CPI_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Is_Escal_Lesser]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Is_Escal_Lesser_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Can_Term_1st_Cur]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Can_Term_1st_Cur_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602901].[BSSI_Can_Term_1_Cur_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Can_Term_Cur_DateNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Rent_RevSharingPay]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Rent_CRSP_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Is_RentAbateFree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Is_RentAbateFree_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Com_Term_Rights]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Com_Term_Rights_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Is_Termination_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Is_Termination_Fee_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Term_Fee_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Term_Fee_Amt_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_LL_Term_Rights]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_LL_Term_Rights_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602901].[BSSI_TerminateRightDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Term_RED_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Notice_Required_Ter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602901].[BSSI_Landlord_Notice_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Landlord_Consent_Re]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Landlord_Consent_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602901].[BSSI_COC_Notice_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_COC_Notice_Period_N]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_GL_Mortgage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_Diamond_Mortgage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602901].[BSSI_assign_affiliates]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Landlord_AssignNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_GL_Mortgate_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Company_Mortgage_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Notice_Term_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Assign_Affiliates_N]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602901].[BSSI_Notice_Assign_NI]'
GO
GRANT SELECT ON  [dbo].[B4602901] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602901] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602901] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602901] TO [DYNGRP]
GO
