CREATE TABLE [dbo].[B4602914]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_LanNotice_Req] [smallint] NOT NULL,
[BSSI_Lan_Con_Req] [smallint] NOT NULL,
[BSSI_ROFR_Req] [smallint] NOT NULL,
[BSSI_Rev_Share] [smallint] NOT NULL,
[BSSI_Date_Req_Lease_Draf] [datetime] NOT NULL,
[BSSI_Date_Terms_Received] [datetime] NOT NULL,
[BSSI_Date_LL_Initial_Dra] [datetime] NOT NULL,
[BSSI_Date_LL_Final_Groun] [datetime] NOT NULL,
[BSSI_Date_LL_Signed] [datetime] NOT NULL,
[BSSI_Date_Received] [datetime] NOT NULL,
[BSSI_Date_Lease_Review_C] [datetime] NOT NULL,
[BSSI_Date_Submitted_Exec] [datetime] NOT NULL,
[BSSI_Date_Agreement_Scan] [datetime] NOT NULL,
[BSSI_Date_Entered_Option] [datetime] NOT NULL,
[BSSI_Date_1st_Option_Exp] [datetime] NOT NULL,
[BSSI_1st_Option_Money] [numeric] (19, 5) NOT NULL,
[BSSI_Date_1st_Option_Pai] [datetime] NOT NULL,
[BSSI_Date_2nd_Option_Exp] [datetime] NOT NULL,
[BSSI_2nd_Option_Money] [numeric] (19, 5) NOT NULL,
[BSSI_Date_2nd_Option_Pai] [datetime] NOT NULL,
[BSSI_Date_Ground_Rent_Be] [datetime] NOT NULL,
[BSSI_W9_Received] [smallint] NOT NULL,
[BSSI_W9_Recieved_Date] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Rev_Sharing_Terms_A] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Leasing_Notes] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Date_Ground_Rent_BN] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__4EA6772A] CHECK ((datepart(hour,[BSSI_Date_1st_Option_Exp])=(0) AND datepart(minute,[BSSI_Date_1st_Option_Exp])=(0) AND datepart(second,[BSSI_Date_1st_Option_Exp])=(0) AND datepart(millisecond,[BSSI_Date_1st_Option_Exp])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__4F9A9B63] CHECK ((datepart(hour,[BSSI_Date_1st_Option_Pai])=(0) AND datepart(minute,[BSSI_Date_1st_Option_Pai])=(0) AND datepart(second,[BSSI_Date_1st_Option_Pai])=(0) AND datepart(millisecond,[BSSI_Date_1st_Option_Pai])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__508EBF9C] CHECK ((datepart(hour,[BSSI_Date_2nd_Option_Exp])=(0) AND datepart(minute,[BSSI_Date_2nd_Option_Exp])=(0) AND datepart(second,[BSSI_Date_2nd_Option_Exp])=(0) AND datepart(millisecond,[BSSI_Date_2nd_Option_Exp])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__5182E3D5] CHECK ((datepart(hour,[BSSI_Date_2nd_Option_Pai])=(0) AND datepart(minute,[BSSI_Date_2nd_Option_Pai])=(0) AND datepart(second,[BSSI_Date_2nd_Option_Pai])=(0) AND datepart(millisecond,[BSSI_Date_2nd_Option_Pai])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__4CBE2EB8] CHECK ((datepart(hour,[BSSI_Date_Agreement_Scan])=(0) AND datepart(minute,[BSSI_Date_Agreement_Scan])=(0) AND datepart(second,[BSSI_Date_Agreement_Scan])=(0) AND datepart(millisecond,[BSSI_Date_Agreement_Scan])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__4DB252F1] CHECK ((datepart(hour,[BSSI_Date_Entered_Option])=(0) AND datepart(minute,[BSSI_Date_Entered_Option])=(0) AND datepart(second,[BSSI_Date_Entered_Option])=(0) AND datepart(millisecond,[BSSI_Date_Entered_Option])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__5277080E] CHECK ((datepart(hour,[BSSI_Date_Ground_Rent_Be])=(0) AND datepart(minute,[BSSI_Date_Ground_Rent_Be])=(0) AND datepart(second,[BSSI_Date_Ground_Rent_Be])=(0) AND datepart(millisecond,[BSSI_Date_Ground_Rent_Be])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__4AD5E646] CHECK ((datepart(hour,[BSSI_Date_Lease_Review_C])=(0) AND datepart(minute,[BSSI_Date_Lease_Review_C])=(0) AND datepart(second,[BSSI_Date_Lease_Review_C])=(0) AND datepart(millisecond,[BSSI_Date_Lease_Review_C])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__47F9799B] CHECK ((datepart(hour,[BSSI_Date_LL_Final_Groun])=(0) AND datepart(minute,[BSSI_Date_LL_Final_Groun])=(0) AND datepart(second,[BSSI_Date_LL_Final_Groun])=(0) AND datepart(millisecond,[BSSI_Date_LL_Final_Groun])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__47055562] CHECK ((datepart(hour,[BSSI_Date_LL_Initial_Dra])=(0) AND datepart(minute,[BSSI_Date_LL_Initial_Dra])=(0) AND datepart(second,[BSSI_Date_LL_Initial_Dra])=(0) AND datepart(millisecond,[BSSI_Date_LL_Initial_Dra])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__48ED9DD4] CHECK ((datepart(hour,[BSSI_Date_LL_Signed])=(0) AND datepart(minute,[BSSI_Date_LL_Signed])=(0) AND datepart(second,[BSSI_Date_LL_Signed])=(0) AND datepart(millisecond,[BSSI_Date_LL_Signed])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__49E1C20D] CHECK ((datepart(hour,[BSSI_Date_Received])=(0) AND datepart(minute,[BSSI_Date_Received])=(0) AND datepart(second,[BSSI_Date_Received])=(0) AND datepart(millisecond,[BSSI_Date_Received])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__451D0CF0] CHECK ((datepart(hour,[BSSI_Date_Req_Lease_Draf])=(0) AND datepart(minute,[BSSI_Date_Req_Lease_Draf])=(0) AND datepart(second,[BSSI_Date_Req_Lease_Draf])=(0) AND datepart(millisecond,[BSSI_Date_Req_Lease_Draf])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__4BCA0A7F] CHECK ((datepart(hour,[BSSI_Date_Submitted_Exec])=(0) AND datepart(minute,[BSSI_Date_Submitted_Exec])=(0) AND datepart(second,[BSSI_Date_Submitted_Exec])=(0) AND datepart(millisecond,[BSSI_Date_Submitted_Exec])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_D__46113129] CHECK ((datepart(hour,[BSSI_Date_Terms_Received])=(0) AND datepart(minute,[BSSI_Date_Terms_Received])=(0) AND datepart(second,[BSSI_Date_Terms_Received])=(0) AND datepart(millisecond,[BSSI_Date_Terms_Received])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [CK__B4602914__BSSI_W__536B2C47] CHECK ((datepart(hour,[BSSI_W9_Recieved_Date])=(0) AND datepart(minute,[BSSI_W9_Recieved_Date])=(0) AND datepart(second,[BSSI_W9_Recieved_Date])=(0) AND datepart(millisecond,[BSSI_W9_Recieved_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602914] ADD CONSTRAINT [PKB4602914] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602914].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602914].[BSSI_LanNotice_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602914].[BSSI_Lan_Con_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602914].[BSSI_ROFR_Req]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602914].[BSSI_Rev_Share]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Req_Lease_Draf]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Terms_Received]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_LL_Initial_Dra]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_LL_Final_Groun]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_LL_Signed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Received]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Lease_Review_C]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Submitted_Exec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Agreement_Scan]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Entered_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_1st_Option_Exp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602914].[BSSI_1st_Option_Money]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_1st_Option_Pai]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_2nd_Option_Exp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602914].[BSSI_2nd_Option_Money]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_2nd_Option_Pai]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_Date_Ground_Rent_Be]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602914].[BSSI_W9_Received]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602914].[BSSI_W9_Recieved_Date]'
GO
GRANT SELECT ON  [dbo].[B4602914] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602914] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602914] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602914] TO [DYNGRP]
GO
