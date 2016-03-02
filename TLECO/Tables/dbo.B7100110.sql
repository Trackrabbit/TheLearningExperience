CREATE TABLE [dbo].[B7100110]
(
[SETUPKEY] [smallint] NOT NULL,
[BSSI_Offering_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OffType_For_SalesFr] [smallint] NOT NULL,
[BSSI_Template_ID_SalesFr] [smallint] NOT NULL,
[BSSI_Default_Revenue_Sou] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Default_Order_TypeS] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RevRecognitionAcctF] [smallint] NOT NULL,
[BSSI_DeferralStartDateOt] [smallint] NOT NULL,
[BSSI_EBTemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_EnableExpiryDate] [tinyint] NOT NULL,
[BSSI_ExpiryPeriod] [smallint] NOT NULL,
[BSSI_Recog_Acct_Index1] [int] NOT NULL,
[BSSI_EnableATExpiryDate] [tinyint] NOT NULL,
[BSSI_ATExpiryPeriod] [smallint] NOT NULL,
[BSSI_AttachReturnsToSche] [tinyint] NOT NULL,
[BSSI_UpdateScheduleOnRet] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100110] ADD CONSTRAINT [PKB7100110] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100110].[BSSI_Offering_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100110].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_OffType_For_SalesFr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_Template_ID_SalesFr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100110].[BSSI_Default_Revenue_Sou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100110].[BSSI_Default_Order_TypeS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_RevRecognitionAcctF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_DeferralStartDateOt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100110].[BSSI_EBTemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_EnableExpiryDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_ExpiryPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_Recog_Acct_Index1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_EnableATExpiryDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_ATExpiryPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_AttachReturnsToSche]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100110].[BSSI_UpdateScheduleOnRet]'
GO
GRANT SELECT ON  [dbo].[B7100110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100110] TO [DYNGRP]
GO
