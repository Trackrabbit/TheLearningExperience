CREATE TABLE [dbo].[B4602215]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Not_Proc_Req_Date] [datetime] NOT NULL,
[BSSI_Not_Pro_Issued_Date] [datetime] NOT NULL,
[BSSI_Contractor_Approved] [smallint] NOT NULL,
[BSSI_App_Cont_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Con_Dra_Rec_Date] [datetime] NOT NULL,
[BSSI_Con_Dra_app_Date] [datetime] NOT NULL,
[BSSI_Building_Perm_Rec_D] [datetime] NOT NULL,
[BSSI_Sch_Ins_Sta_Date] [datetime] NOT NULL,
[BSSI_Act_Inst_Sta_Date] [datetime] NOT NULL,
[BSSI_Inst_Compl_Date] [datetime] NOT NULL,
[BSSI_Comm_Date_Lett_Req] [smallint] NOT NULL,
[BSSI_Final_Insp_PL_Comp] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_As_Bui_Rec_Field_Da] [datetime] NOT NULL,
[BSSI_As_Buil_Int_Lib] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_As_Buil_Scann_Date] [datetime] NOT NULL,
[BSSI_As_Bui_Rev_Date] [datetime] NOT NULL,
[BSSI_Actual_Height] [datetime] NOT NULL,
[BSSI_Amm_Req] [smallint] NOT NULL,
[BSSI_Remove_Date] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Inst_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_A__328A26C0] CHECK ((datepart(hour,[BSSI_Act_Inst_Sta_Date])=(0) AND datepart(minute,[BSSI_Act_Inst_Sta_Date])=(0) AND datepart(second,[BSSI_Act_Inst_Sta_Date])=(0) AND datepart(millisecond,[BSSI_Act_Inst_Sta_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_A__374EDBDD] CHECK ((datepart(hour,[BSSI_Actual_Height])=(0) AND datepart(minute,[BSSI_Actual_Height])=(0) AND datepart(second,[BSSI_Actual_Height])=(0) AND datepart(millisecond,[BSSI_Actual_Height])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_A__34726F32] CHECK ((datepart(hour,[BSSI_As_Bui_Rec_Field_Da])=(0) AND datepart(minute,[BSSI_As_Bui_Rec_Field_Da])=(0) AND datepart(second,[BSSI_As_Bui_Rec_Field_Da])=(0) AND datepart(millisecond,[BSSI_As_Bui_Rec_Field_Da])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_A__365AB7A4] CHECK ((datepart(hour,[BSSI_As_Bui_Rev_Date])=(0) AND datepart(minute,[BSSI_As_Bui_Rev_Date])=(0) AND datepart(second,[BSSI_As_Bui_Rev_Date])=(0) AND datepart(millisecond,[BSSI_As_Bui_Rev_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_A__3566936B] CHECK ((datepart(hour,[BSSI_As_Buil_Scann_Date])=(0) AND datepart(minute,[BSSI_As_Buil_Scann_Date])=(0) AND datepart(second,[BSSI_As_Buil_Scann_Date])=(0) AND datepart(millisecond,[BSSI_As_Buil_Scann_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_B__30A1DE4E] CHECK ((datepart(hour,[BSSI_Building_Perm_Rec_D])=(0) AND datepart(minute,[BSSI_Building_Perm_Rec_D])=(0) AND datepart(second,[BSSI_Building_Perm_Rec_D])=(0) AND datepart(millisecond,[BSSI_Building_Perm_Rec_D])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_C__2FADBA15] CHECK ((datepart(hour,[BSSI_Con_Dra_app_Date])=(0) AND datepart(minute,[BSSI_Con_Dra_app_Date])=(0) AND datepart(second,[BSSI_Con_Dra_app_Date])=(0) AND datepart(millisecond,[BSSI_Con_Dra_app_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_C__2EB995DC] CHECK ((datepart(hour,[BSSI_Con_Dra_Rec_Date])=(0) AND datepart(minute,[BSSI_Con_Dra_Rec_Date])=(0) AND datepart(second,[BSSI_Con_Dra_Rec_Date])=(0) AND datepart(millisecond,[BSSI_Con_Dra_Rec_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_I__337E4AF9] CHECK ((datepart(hour,[BSSI_Inst_Compl_Date])=(0) AND datepart(minute,[BSSI_Inst_Compl_Date])=(0) AND datepart(second,[BSSI_Inst_Compl_Date])=(0) AND datepart(millisecond,[BSSI_Inst_Compl_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_N__2DC571A3] CHECK ((datepart(hour,[BSSI_Not_Pro_Issued_Date])=(0) AND datepart(minute,[BSSI_Not_Pro_Issued_Date])=(0) AND datepart(second,[BSSI_Not_Pro_Issued_Date])=(0) AND datepart(millisecond,[BSSI_Not_Pro_Issued_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_N__2CD14D6A] CHECK ((datepart(hour,[BSSI_Not_Proc_Req_Date])=(0) AND datepart(minute,[BSSI_Not_Proc_Req_Date])=(0) AND datepart(second,[BSSI_Not_Proc_Req_Date])=(0) AND datepart(millisecond,[BSSI_Not_Proc_Req_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_R__38430016] CHECK ((datepart(hour,[BSSI_Remove_Date])=(0) AND datepart(minute,[BSSI_Remove_Date])=(0) AND datepart(second,[BSSI_Remove_Date])=(0) AND datepart(millisecond,[BSSI_Remove_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [CK__B4602215__BSSI_S__31960287] CHECK ((datepart(hour,[BSSI_Sch_Ins_Sta_Date])=(0) AND datepart(minute,[BSSI_Sch_Ins_Sta_Date])=(0) AND datepart(second,[BSSI_Sch_Ins_Sta_Date])=(0) AND datepart(millisecond,[BSSI_Sch_Ins_Sta_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602215] ADD CONSTRAINT [PKB4602215] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602215].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Not_Proc_Req_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Not_Pro_Issued_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602215].[BSSI_Contractor_Approved]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602215].[BSSI_App_Cont_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Con_Dra_Rec_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Con_Dra_app_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Building_Perm_Rec_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Sch_Ins_Sta_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Act_Inst_Sta_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Inst_Compl_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602215].[BSSI_Comm_Date_Lett_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602215].[BSSI_Final_Insp_PL_Comp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_As_Bui_Rec_Field_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602215].[BSSI_As_Buil_Int_Lib]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_As_Buil_Scann_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_As_Bui_Rev_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Actual_Height]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602215].[BSSI_Amm_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602215].[BSSI_Remove_Date]'
GO
GRANT SELECT ON  [dbo].[B4602215] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602215] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602215] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602215] TO [DYNGRP]
GO
