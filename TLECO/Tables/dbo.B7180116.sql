CREATE TABLE [dbo].[B7180116]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPCLDIST] [smallint] NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_DeferralStartDate] [datetime] NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_Acct_Index] [int] NOT NULL,
[BSSI_ScheduleBasedOnDate] [tinyint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_DeferralEndDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7180116] ADD CONSTRAINT [CK__B7180116__BSSI_D__06D0641D] CHECK ((datepart(hour,[BSSI_DeferralEndDate])=(0) AND datepart(minute,[BSSI_DeferralEndDate])=(0) AND datepart(second,[BSSI_DeferralEndDate])=(0) AND datepart(millisecond,[BSSI_DeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7180116] ADD CONSTRAINT [CK__B7180116__BSSI_D__05DC3FE4] CHECK ((datepart(hour,[BSSI_DeferralStartDate])=(0) AND datepart(minute,[BSSI_DeferralStartDate])=(0) AND datepart(second,[BSSI_DeferralStartDate])=(0) AND datepart(millisecond,[BSSI_DeferralStartDate])=(0)))
GO
ALTER TABLE [dbo].[B7180116] ADD CONSTRAINT [PKB7180116] PRIMARY KEY CLUSTERED  ([VCHRNMBR], [CNTRLTYP], [APTVCHNM], [SPCLDIST], [DSTSQNUM], [SQNCLINE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7180116].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7180116].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[SPCLDIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7180116].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7180116].[BSSI_DeferralStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7180116].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[BSSI_Recog_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[BSSI_ScheduleBasedOnDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180116].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7180116].[BSSI_DeferralEndDate]'
GO
GRANT SELECT ON  [dbo].[B7180116] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7180116] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7180116] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7180116] TO [DYNGRP]
GO
