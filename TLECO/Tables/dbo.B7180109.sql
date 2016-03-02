CREATE TABLE [dbo].[B7180109]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_DeferralStartDate] [datetime] NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_Acct_Index] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ScheduleBasedOnDate] [tinyint] NOT NULL,
[BSSI_DeferralEndDate] [datetime] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7180109] ADD CONSTRAINT [CK__B7180109__BSSI_D__4F84C173] CHECK ((datepart(hour,[BSSI_DeferralEndDate])=(0) AND datepart(minute,[BSSI_DeferralEndDate])=(0) AND datepart(second,[BSSI_DeferralEndDate])=(0) AND datepart(millisecond,[BSSI_DeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7180109] ADD CONSTRAINT [CK__B7180109__BSSI_D__4E909D3A] CHECK ((datepart(hour,[BSSI_DeferralStartDate])=(0) AND datepart(minute,[BSSI_DeferralStartDate])=(0) AND datepart(second,[BSSI_DeferralStartDate])=(0) AND datepart(millisecond,[BSSI_DeferralStartDate])=(0)))
GO
ALTER TABLE [dbo].[B7180109] ADD CONSTRAINT [PKB7180109] PRIMARY KEY CLUSTERED  ([USERID], [JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7180109].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180109].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7180109].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180109].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7180109].[BSSI_DeferralStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7180109].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180109].[BSSI_Recog_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180109].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7180109].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180109].[BSSI_ScheduleBasedOnDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7180109].[BSSI_DeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7180109].[BSSI_Recog_Frequency]'
GO
GRANT SELECT ON  [dbo].[B7180109] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7180109] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7180109] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7180109] TO [DYNGRP]
GO
