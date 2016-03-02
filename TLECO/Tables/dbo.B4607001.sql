CREATE TABLE [dbo].[B4607001]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BTA_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MTA_NI] [numeric] (19, 5) NOT NULL,
[BSSI_MTA_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BTA_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Tower_Manufacturer] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tower_Manufactur_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Tower_Model] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tower_Model_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Tower_Face_Size] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tower_Face_Size_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Tower_Order_Info] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Tower_Order_Info_NI] [numeric] (19, 5) NOT NULL,
[BSSI_As_Build_Capacity_B] [numeric] (19, 5) NOT NULL,
[BSSI_As_Build_Cap_BBE_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Used_Capacity_BBE] [numeric] (19, 5) NOT NULL,
[BSSI_Used_Capacit_BBE_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Capacity_Left_BBE] [numeric] (19, 5) NOT NULL,
[BSSI_Capacity_Left_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Prev_Owner] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Class_Of_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_MSA] [smallint] NOT NULL,
[BSSI_MSA_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Access_Length] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Access_Length_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Last_Site_Visit] [datetime] NOT NULL,
[BSSI_Last_Site_Visit_NI] [numeric] (19, 5) NOT NULL,
[BSSI_LastStrucPerform_Dt] [datetime] NOT NULL,
[BSSI_LastStrucPerf_Dt_NI] [numeric] (19, 5) NOT NULL,
[BSSI_LastStrucMod_Dt] [datetime] NOT NULL,
[BSSI_LastStrucMod_Dt_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Ground_Space_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Compound_Size_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Shelter_Size_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Desc_Of_Shelter] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Space_Used_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Space_Avail_SF] [numeric] (19, 5) NOT NULL,
[BSSI_Ground_Space_SF_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Compound_Size_SF_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Shelter_Size_SF_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Desc_Of_Shelter_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Space_Used_SF_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Space_Avail_SF_NI] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4607001] ADD CONSTRAINT [CK__B4607001__BSSI_L__3763EA76] CHECK ((datepart(hour,[BSSI_Last_Site_Visit])=(0) AND datepart(minute,[BSSI_Last_Site_Visit])=(0) AND datepart(second,[BSSI_Last_Site_Visit])=(0) AND datepart(millisecond,[BSSI_Last_Site_Visit])=(0)))
GO
ALTER TABLE [dbo].[B4607001] ADD CONSTRAINT [CK__B4607001__BSSI_L__394C32E8] CHECK ((datepart(hour,[BSSI_LastStrucMod_Dt])=(0) AND datepart(minute,[BSSI_LastStrucMod_Dt])=(0) AND datepart(second,[BSSI_LastStrucMod_Dt])=(0) AND datepart(millisecond,[BSSI_LastStrucMod_Dt])=(0)))
GO
ALTER TABLE [dbo].[B4607001] ADD CONSTRAINT [CK__B4607001__BSSI_L__38580EAF] CHECK ((datepart(hour,[BSSI_LastStrucPerform_Dt])=(0) AND datepart(minute,[BSSI_LastStrucPerform_Dt])=(0) AND datepart(second,[BSSI_LastStrucPerform_Dt])=(0) AND datepart(millisecond,[BSSI_LastStrucPerform_Dt])=(0)))
GO
ALTER TABLE [dbo].[B4607001] ADD CONSTRAINT [PKB4607001] PRIMARY KEY NONCLUSTERED  ([LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_BTA_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_MTA_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_MTA_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_BTA_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Tower_Manufacturer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Tower_Manufactur_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Tower_Model]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Tower_Model_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Tower_Face_Size]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Tower_Face_Size_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Tower_Order_Info]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Tower_Order_Info_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_As_Build_Capacity_B]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_As_Build_Cap_BBE_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Used_Capacity_BBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Used_Capacit_BBE_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Capacity_Left_BBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Capacity_Left_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Prev_Owner]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Site_Class_Of_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4607001].[BSSI_MSA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_MSA_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Access_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Access_Length_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4607001].[BSSI_Last_Site_Visit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Last_Site_Visit_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4607001].[BSSI_LastStrucPerform_Dt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_LastStrucPerf_Dt_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4607001].[BSSI_LastStrucMod_Dt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_LastStrucMod_Dt_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Ground_Space_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Compound_Size_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Shelter_Size_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4607001].[BSSI_Desc_Of_Shelter]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Space_Used_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Space_Avail_SF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Ground_Space_SF_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Compound_Size_SF_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Shelter_Size_SF_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Desc_Of_Shelter_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Space_Used_SF_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[BSSI_Space_Avail_SF_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4607001].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4607001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4607001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4607001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4607001] TO [DYNGRP]
GO
