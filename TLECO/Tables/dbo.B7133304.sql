CREATE TABLE [dbo].[B7133304]
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
ALTER TABLE [dbo].[B7133304] ADD CONSTRAINT [CK__B7133304__BSSI_A__75B55753] CHECK ((datepart(hour,[BSSI_ATEndDate])=(0) AND datepart(minute,[BSSI_ATEndDate])=(0) AND datepart(second,[BSSI_ATEndDate])=(0) AND datepart(millisecond,[BSSI_ATEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7133304] ADD CONSTRAINT [CK__B7133304__BSSI_D__73CD0EE1] CHECK ((datepart(hour,[BSSI_DeferralEndDate])=(0) AND datepart(minute,[BSSI_DeferralEndDate])=(0) AND datepart(second,[BSSI_DeferralEndDate])=(0) AND datepart(millisecond,[BSSI_DeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7133304] ADD CONSTRAINT [CK__B7133304__BSSI_D__72D8EAA8] CHECK ((datepart(hour,[BSSI_DeferralStartDate])=(0) AND datepart(minute,[BSSI_DeferralStartDate])=(0) AND datepart(second,[BSSI_DeferralStartDate])=(0) AND datepart(millisecond,[BSSI_DeferralStartDate])=(0)))
GO
ALTER TABLE [dbo].[B7133304] ADD CONSTRAINT [CK__B7133304__BSSI_E__74C1331A] CHECK ((datepart(hour,[BSSI_ExpiryDate])=(0) AND datepart(minute,[BSSI_ExpiryDate])=(0) AND datepart(second,[BSSI_ExpiryDate])=(0) AND datepart(millisecond,[BSSI_ExpiryDate])=(0)))
GO
ALTER TABLE [dbo].[B7133304] ADD CONSTRAINT [PKB7133304] PRIMARY KEY CLUSTERED  ([SOPNUMBE], [SOPTYPE], [LNITMSEQ], [CMPNTSEQ], [BSSI_Line_Item_Sequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133304].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[BSSI_Line_Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133304].[BSSI_EventID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133304].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133304].[BSSI_DeferralStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133304].[BSSI_DeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133304].[BSSI_ExpiryDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133304].[BSSI_ATEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[BSSI_Event_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[BSSI_Event_Percent1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133304].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133304].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133304].[BSSI_Recognition_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133304].[BSSI_Orig_Recog_Amt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133304].[BSSI_Identifier]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[BSSI_IsAmount_Recognized]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[BSSI_IsAmount_Stub]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133304].[BSSI_Merged]'
GO
GRANT SELECT ON  [dbo].[B7133304] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7133304] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7133304] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7133304] TO [DYNGRP]
GO
