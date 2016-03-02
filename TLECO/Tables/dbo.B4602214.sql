CREATE TABLE [dbo].[B4602214]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lan_Con_Rec_Date] [datetime] NOT NULL,
[BSSI_Lan_Con_Req] [smallint] NOT NULL,
[BSSI_Lan_Con_Req_Date] [datetime] NOT NULL,
[BSSI_Lan_Lease_Rev_Date] [datetime] NOT NULL,
[BSSI_LanNoti_Sent_Date] [datetime] NOT NULL,
[BSSI_LanNotice_Req] [smallint] NOT NULL,
[BSSI_ROFR_Exc_Date] [datetime] NOT NULL,
[BSSI_ROFR_Req] [smallint] NOT NULL,
[BSSI_ROFR_Ret_Date] [datetime] NOT NULL,
[BSSI_ROFR_Sent_Out_Date] [datetime] NOT NULL,
[BSSI_Rev_Share] [smallint] NOT NULL,
[BSSI_Rev_Share_Per] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Bus_Ter_Complete_Da] [datetime] NOT NULL,
[BSSI_One_Time_Colo_Amoun] [numeric] (19, 5) NOT NULL,
[BSSI_One_Time_Colo_Fee] [smallint] NOT NULL,
[BSSI_Lease_Requested_Dat] [datetime] NOT NULL,
[BSSI_Ini_Lease_Draft_Cus] [datetime] NOT NULL,
[BSSI_Final_Exe_Cus_Date] [datetime] NOT NULL,
[BSSI_Par_Exe_Cont_Ret_Da] [datetime] NOT NULL,
[BSSI_Lease_Review_Com_Da] [datetime] NOT NULL,
[BSSI_Agree_Scanned_Date] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Leasing_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_A__63626845] CHECK ((datepart(hour,[BSSI_Agree_Scanned_Date])=(0) AND datepart(minute,[BSSI_Agree_Scanned_Date])=(0) AND datepart(second,[BSSI_Agree_Scanned_Date])=(0) AND datepart(millisecond,[BSSI_Agree_Scanned_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_B__5DA98EEF] CHECK ((datepart(hour,[BSSI_Bus_Ter_Complete_Da])=(0) AND datepart(minute,[BSSI_Bus_Ter_Complete_Da])=(0) AND datepart(second,[BSSI_Bus_Ter_Complete_Da])=(0) AND datepart(millisecond,[BSSI_Bus_Ter_Complete_Da])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_F__6085FB9A] CHECK ((datepart(hour,[BSSI_Final_Exe_Cus_Date])=(0) AND datepart(minute,[BSSI_Final_Exe_Cus_Date])=(0) AND datepart(second,[BSSI_Final_Exe_Cus_Date])=(0) AND datepart(millisecond,[BSSI_Final_Exe_Cus_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_I__5F91D761] CHECK ((datepart(hour,[BSSI_Ini_Lease_Draft_Cus])=(0) AND datepart(minute,[BSSI_Ini_Lease_Draft_Cus])=(0) AND datepart(second,[BSSI_Ini_Lease_Draft_Cus])=(0) AND datepart(millisecond,[BSSI_Ini_Lease_Draft_Cus])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_L__56FC9160] CHECK ((datepart(hour,[BSSI_Lan_Con_Rec_Date])=(0) AND datepart(minute,[BSSI_Lan_Con_Rec_Date])=(0) AND datepart(second,[BSSI_Lan_Con_Rec_Date])=(0) AND datepart(millisecond,[BSSI_Lan_Con_Rec_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_L__57F0B599] CHECK ((datepart(hour,[BSSI_Lan_Con_Req_Date])=(0) AND datepart(minute,[BSSI_Lan_Con_Req_Date])=(0) AND datepart(second,[BSSI_Lan_Con_Req_Date])=(0) AND datepart(millisecond,[BSSI_Lan_Con_Req_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_L__58E4D9D2] CHECK ((datepart(hour,[BSSI_Lan_Lease_Rev_Date])=(0) AND datepart(minute,[BSSI_Lan_Lease_Rev_Date])=(0) AND datepart(second,[BSSI_Lan_Lease_Rev_Date])=(0) AND datepart(millisecond,[BSSI_Lan_Lease_Rev_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_L__59D8FE0B] CHECK ((datepart(hour,[BSSI_LanNoti_Sent_Date])=(0) AND datepart(minute,[BSSI_LanNoti_Sent_Date])=(0) AND datepart(second,[BSSI_LanNoti_Sent_Date])=(0) AND datepart(millisecond,[BSSI_LanNoti_Sent_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_L__5E9DB328] CHECK ((datepart(hour,[BSSI_Lease_Requested_Dat])=(0) AND datepart(minute,[BSSI_Lease_Requested_Dat])=(0) AND datepart(second,[BSSI_Lease_Requested_Dat])=(0) AND datepart(millisecond,[BSSI_Lease_Requested_Dat])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_L__626E440C] CHECK ((datepart(hour,[BSSI_Lease_Review_Com_Da])=(0) AND datepart(minute,[BSSI_Lease_Review_Com_Da])=(0) AND datepart(second,[BSSI_Lease_Review_Com_Da])=(0) AND datepart(millisecond,[BSSI_Lease_Review_Com_Da])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_P__617A1FD3] CHECK ((datepart(hour,[BSSI_Par_Exe_Cont_Ret_Da])=(0) AND datepart(minute,[BSSI_Par_Exe_Cont_Ret_Da])=(0) AND datepart(second,[BSSI_Par_Exe_Cont_Ret_Da])=(0) AND datepart(millisecond,[BSSI_Par_Exe_Cont_Ret_Da])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_R__5ACD2244] CHECK ((datepart(hour,[BSSI_ROFR_Exc_Date])=(0) AND datepart(minute,[BSSI_ROFR_Exc_Date])=(0) AND datepart(second,[BSSI_ROFR_Exc_Date])=(0) AND datepart(millisecond,[BSSI_ROFR_Exc_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_R__5BC1467D] CHECK ((datepart(hour,[BSSI_ROFR_Ret_Date])=(0) AND datepart(minute,[BSSI_ROFR_Ret_Date])=(0) AND datepart(second,[BSSI_ROFR_Ret_Date])=(0) AND datepart(millisecond,[BSSI_ROFR_Ret_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [CK__B4602214__BSSI_R__5CB56AB6] CHECK ((datepart(hour,[BSSI_ROFR_Sent_Out_Date])=(0) AND datepart(minute,[BSSI_ROFR_Sent_Out_Date])=(0) AND datepart(second,[BSSI_ROFR_Sent_Out_Date])=(0) AND datepart(millisecond,[BSSI_ROFR_Sent_Out_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602214] ADD CONSTRAINT [PKB4602214] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602214].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Lan_Con_Rec_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602214].[BSSI_Lan_Con_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Lan_Con_Req_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Lan_Lease_Rev_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_LanNoti_Sent_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602214].[BSSI_LanNotice_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_ROFR_Exc_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602214].[BSSI_ROFR_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_ROFR_Ret_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_ROFR_Sent_Out_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602214].[BSSI_Rev_Share]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602214].[BSSI_Rev_Share_Per]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Bus_Ter_Complete_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602214].[BSSI_One_Time_Colo_Amoun]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602214].[BSSI_One_Time_Colo_Fee]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Lease_Requested_Dat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Ini_Lease_Draft_Cus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Final_Exe_Cus_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Par_Exe_Cont_Ret_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Lease_Review_Com_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602214].[BSSI_Agree_Scanned_Date]'
GO
GRANT SELECT ON  [dbo].[B4602214] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602214] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602214] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602214] TO [DYNGRP]
GO
