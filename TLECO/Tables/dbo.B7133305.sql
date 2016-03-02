CREATE TABLE [dbo].[B7133305]
(
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[BSSI_Line_Item_Sequence] [int] NOT NULL,
[BSSI_EventID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DeferralStartDate] [datetime] NOT NULL,
[BSSI_DeferralEndDate] [datetime] NOT NULL,
[BSSI_ExpiryDate] [datetime] NOT NULL,
[BSSI_ATEndDate] [datetime] NOT NULL,
[BSSI_Event_Percent] [smallint] NOT NULL,
[BSSI_Event_Percent1] [smallint] NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[OXTNDPRC] [numeric] (19, 5) NOT NULL,
[BSSI_Recognition_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Orig_Recog_Amt] [numeric] (19, 5) NOT NULL,
[BSSI_Identifier] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_IsAmount_Recognized] [tinyint] NOT NULL,
[BSSI_IsAmount_Stub] [tinyint] NOT NULL,
[BSSI_Merged] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7133305] ADD CONSTRAINT [CK__B7133305__BSSI_A__012709FF] CHECK ((datepart(hour,[BSSI_ATEndDate])=(0) AND datepart(minute,[BSSI_ATEndDate])=(0) AND datepart(second,[BSSI_ATEndDate])=(0) AND datepart(millisecond,[BSSI_ATEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7133305] ADD CONSTRAINT [CK__B7133305__BSSI_D__7F3EC18D] CHECK ((datepart(hour,[BSSI_DeferralEndDate])=(0) AND datepart(minute,[BSSI_DeferralEndDate])=(0) AND datepart(second,[BSSI_DeferralEndDate])=(0) AND datepart(millisecond,[BSSI_DeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7133305] ADD CONSTRAINT [CK__B7133305__BSSI_D__7E4A9D54] CHECK ((datepart(hour,[BSSI_DeferralStartDate])=(0) AND datepart(minute,[BSSI_DeferralStartDate])=(0) AND datepart(second,[BSSI_DeferralStartDate])=(0) AND datepart(millisecond,[BSSI_DeferralStartDate])=(0)))
GO
ALTER TABLE [dbo].[B7133305] ADD CONSTRAINT [CK__B7133305__BSSI_E__0032E5C6] CHECK ((datepart(hour,[BSSI_ExpiryDate])=(0) AND datepart(minute,[BSSI_ExpiryDate])=(0) AND datepart(second,[BSSI_ExpiryDate])=(0) AND datepart(millisecond,[BSSI_ExpiryDate])=(0)))
GO
ALTER TABLE [dbo].[B7133305] ADD CONSTRAINT [PKB7133305] PRIMARY KEY CLUSTERED  ([SOPNUMBE], [SOPTYPE], [LNITMSEQ], [CMPNTSEQ], [BSSI_Line_Item_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133305].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133305].[BSSI_EventID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133305].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133305].[BSSI_DeferralStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133305].[BSSI_DeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133305].[BSSI_ExpiryDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133305].[BSSI_ATEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[BSSI_Event_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[BSSI_Event_Percent1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133305].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133305].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133305].[BSSI_Recognition_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133305].[BSSI_Orig_Recog_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133305].[BSSI_Identifier]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[BSSI_IsAmount_Recognized]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[BSSI_IsAmount_Stub]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133305].[BSSI_Merged]'
GO
GRANT SELECT ON  [dbo].[B7133305] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7133305] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7133305] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7133305] TO [DYNGRP]
GO
