CREATE TABLE [dbo].[B4602213]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_App_Rec_Date] [datetime] NOT NULL,
[BSSI_App_Fee_Req] [smallint] NOT NULL,
[BSSI_App_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_App_Fee_Bill_Date] [datetime] NOT NULL,
[BSSI_App_Pre_det_Date] [datetime] NOT NULL,
[BSSI_Com_Exp_Com_Date] [datetime] NOT NULL,
[BSSI_Com_Exp_Req] [smallint] NOT NULL,
[BSSI_SSIS_Cos_Pas_Thr] [smallint] NOT NULL,
[BSSI_SSIS_Cost] [numeric] (19, 5) NOT NULL,
[BSSI_SSIS_Cus_PO_Num] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SSIS_Ord_Date] [datetime] NOT NULL,
[BSSI_SSIS_PO_Num] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SSIS_Rec_Date] [datetime] NOT NULL,
[BSSI_SSIS_Req] [smallint] NOT NULL,
[BSSI_Site_Ske_Rec_Date] [datetime] NOT NULL,
[BSSI_Tow_Dra_File] [smallint] NOT NULL,
[BSSI_Fou_Des_File] [smallint] NOT NULL,
[BSSI_Geo_File] [smallint] NOT NULL,
[BSSI_Str_Cos_Pas_Thr] [smallint] NOT NULL,
[BSSI_Str_Cost] [numeric] (19, 5) NOT NULL,
[BSSI_Str_Cus_PO_Num_Req_] [datetime] NOT NULL,
[BSSI_Str_Cus_PO_Rec_Date] [datetime] NOT NULL,
[BSSI_Str_Eng] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Str_Mod_Req] [smallint] NOT NULL,
[BSSI_Str_Ord_Date] [datetime] NOT NULL,
[BSSI_Str_Rec_Date] [datetime] NOT NULL,
[BSSI_Str_Req] [smallint] NOT NULL,
[BSSI_Str_Res] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Col_Pac_Mai_Date] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Fea_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_A__3B5476EB] CHECK ((datepart(hour,[BSSI_App_Fee_Bill_Date])=(0) AND datepart(minute,[BSSI_App_Fee_Bill_Date])=(0) AND datepart(second,[BSSI_App_Fee_Bill_Date])=(0) AND datepart(millisecond,[BSSI_App_Fee_Bill_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_A__3C489B24] CHECK ((datepart(hour,[BSSI_App_Pre_det_Date])=(0) AND datepart(minute,[BSSI_App_Pre_det_Date])=(0) AND datepart(second,[BSSI_App_Pre_det_Date])=(0) AND datepart(millisecond,[BSSI_App_Pre_det_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_A__3A6052B2] CHECK ((datepart(hour,[BSSI_App_Rec_Date])=(0) AND datepart(minute,[BSSI_App_Rec_Date])=(0) AND datepart(second,[BSSI_App_Rec_Date])=(0) AND datepart(millisecond,[BSSI_App_Rec_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_C__44DDE125] CHECK ((datepart(hour,[BSSI_Col_Pac_Mai_Date])=(0) AND datepart(minute,[BSSI_Col_Pac_Mai_Date])=(0) AND datepart(second,[BSSI_Col_Pac_Mai_Date])=(0) AND datepart(millisecond,[BSSI_Col_Pac_Mai_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_C__3D3CBF5D] CHECK ((datepart(hour,[BSSI_Com_Exp_Com_Date])=(0) AND datepart(minute,[BSSI_Com_Exp_Com_Date])=(0) AND datepart(second,[BSSI_Com_Exp_Com_Date])=(0) AND datepart(millisecond,[BSSI_Com_Exp_Com_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_S__40192C08] CHECK ((datepart(hour,[BSSI_Site_Ske_Rec_Date])=(0) AND datepart(minute,[BSSI_Site_Ske_Rec_Date])=(0) AND datepart(second,[BSSI_Site_Ske_Rec_Date])=(0) AND datepart(millisecond,[BSSI_Site_Ske_Rec_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_S__3E30E396] CHECK ((datepart(hour,[BSSI_SSIS_Ord_Date])=(0) AND datepart(minute,[BSSI_SSIS_Ord_Date])=(0) AND datepart(second,[BSSI_SSIS_Ord_Date])=(0) AND datepart(millisecond,[BSSI_SSIS_Ord_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_S__3F2507CF] CHECK ((datepart(hour,[BSSI_SSIS_Rec_Date])=(0) AND datepart(minute,[BSSI_SSIS_Rec_Date])=(0) AND datepart(second,[BSSI_SSIS_Rec_Date])=(0) AND datepart(millisecond,[BSSI_SSIS_Rec_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_S__410D5041] CHECK ((datepart(hour,[BSSI_Str_Cus_PO_Num_Req_])=(0) AND datepart(minute,[BSSI_Str_Cus_PO_Num_Req_])=(0) AND datepart(second,[BSSI_Str_Cus_PO_Num_Req_])=(0) AND datepart(millisecond,[BSSI_Str_Cus_PO_Num_Req_])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_S__4201747A] CHECK ((datepart(hour,[BSSI_Str_Cus_PO_Rec_Date])=(0) AND datepart(minute,[BSSI_Str_Cus_PO_Rec_Date])=(0) AND datepart(second,[BSSI_Str_Cus_PO_Rec_Date])=(0) AND datepart(millisecond,[BSSI_Str_Cus_PO_Rec_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_S__42F598B3] CHECK ((datepart(hour,[BSSI_Str_Ord_Date])=(0) AND datepart(minute,[BSSI_Str_Ord_Date])=(0) AND datepart(second,[BSSI_Str_Ord_Date])=(0) AND datepart(millisecond,[BSSI_Str_Ord_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [CK__B4602213__BSSI_S__43E9BCEC] CHECK ((datepart(hour,[BSSI_Str_Rec_Date])=(0) AND datepart(minute,[BSSI_Str_Rec_Date])=(0) AND datepart(second,[BSSI_Str_Rec_Date])=(0) AND datepart(millisecond,[BSSI_Str_Rec_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602213] ADD CONSTRAINT [PKB4602213] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602213].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_App_Rec_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_App_Fee_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602213].[BSSI_App_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_App_Fee_Bill_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_App_Pre_det_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_Com_Exp_Com_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_Com_Exp_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_SSIS_Cos_Pas_Thr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602213].[BSSI_SSIS_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602213].[BSSI_SSIS_Cus_PO_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_SSIS_Ord_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602213].[BSSI_SSIS_PO_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_SSIS_Rec_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_SSIS_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_Site_Ske_Rec_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_Tow_Dra_File]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_Fou_Des_File]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_Geo_File]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_Str_Cos_Pas_Thr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602213].[BSSI_Str_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_Str_Cus_PO_Num_Req_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_Str_Cus_PO_Rec_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602213].[BSSI_Str_Eng]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_Str_Mod_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_Str_Ord_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_Str_Rec_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602213].[BSSI_Str_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602213].[BSSI_Str_Res]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602213].[BSSI_Col_Pac_Mai_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602213].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602213] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602213] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602213] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602213] TO [DYNGRP]
GO
