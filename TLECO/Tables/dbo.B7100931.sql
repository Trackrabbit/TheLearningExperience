CREATE TABLE [dbo].[B7100931]
(
[BSSI_Or_Company_ID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMST] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DefAccountNumberStr] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ScheduleBasedOnDate] [tinyint] NOT NULL,
[BSSI_DeferralStartDate] [datetime] NOT NULL,
[BSSI_DeferralEndDate] [datetime] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_RecogAcctNumberStri] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100931] ADD CONSTRAINT [CK__B7100931__BSSI_D__1286A02B] CHECK ((datepart(hour,[BSSI_DeferralEndDate])=(0) AND datepart(minute,[BSSI_DeferralEndDate])=(0) AND datepart(second,[BSSI_DeferralEndDate])=(0) AND datepart(millisecond,[BSSI_DeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7100931] ADD CONSTRAINT [CK__B7100931__BSSI_D__11927BF2] CHECK ((datepart(hour,[BSSI_DeferralStartDate])=(0) AND datepart(minute,[BSSI_DeferralStartDate])=(0) AND datepart(second,[BSSI_DeferralStartDate])=(0) AND datepart(millisecond,[BSSI_DeferralStartDate])=(0)))
GO
ALTER TABLE [dbo].[B7100931] ADD CONSTRAINT [CK__B7100931__EXCHDA__137AC464] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[B7100931] ADD CONSTRAINT [PKB7100931] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1B7100931] ON [dbo].[B7100931] ([BSSI_Or_Company_ID], [CURNCYID], [INTERID], [ACTNUMST], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[BSSI_Or_Company_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[ACTNUMST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[BSSI_DefAccountNumberStr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100931].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100931].[BSSI_ScheduleBasedOnDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100931].[BSSI_DeferralStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100931].[BSSI_DeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100931].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[BSSI_RecogAcctNumberStri]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100931].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100931].[BSSI_Recog_TemplateID]'
GO
GRANT SELECT ON  [dbo].[B7100931] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100931] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100931] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100931] TO [DYNGRP]
GO
