CREATE TABLE [dbo].[B7100980]
(
[JRNENTRY] [int] NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[ORDOCAMT] [numeric] (19, 5) NOT NULL,
[BSSI_ScheduleBasedOnDate] [tinyint] NOT NULL,
[BSSI_DeferralStartDate] [datetime] NOT NULL,
[BSSI_DeferralEndDate] [datetime] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_RecogAcctNumberStri] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7100980] ADD CONSTRAINT [CK__B7100980__BSSI_D__76DE85B6] CHECK ((datepart(hour,[BSSI_DeferralEndDate])=(0) AND datepart(minute,[BSSI_DeferralEndDate])=(0) AND datepart(second,[BSSI_DeferralEndDate])=(0) AND datepart(millisecond,[BSSI_DeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7100980] ADD CONSTRAINT [CK__B7100980__BSSI_D__75EA617D] CHECK ((datepart(hour,[BSSI_DeferralStartDate])=(0) AND datepart(minute,[BSSI_DeferralStartDate])=(0) AND datepart(second,[BSSI_DeferralStartDate])=(0) AND datepart(millisecond,[BSSI_DeferralStartDate])=(0)))
GO
ALTER TABLE [dbo].[B7100980] ADD CONSTRAINT [CK__B7100980__EXCHDA__77D2A9EF] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[B7100980] ADD CONSTRAINT [PKB7100980] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B7100980] ON [dbo].[B7100980] ([JRNENTRY], [ACTINDX], [ORDOCAMT], [INTERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7100980] ON [dbo].[B7100980] ([JRNENTRY], [INTERID], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100980].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100980].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100980].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100980].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100980].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7100980].[ORDOCAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100980].[BSSI_ScheduleBasedOnDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100980].[BSSI_DeferralStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100980].[BSSI_DeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7100980].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100980].[BSSI_RecogAcctNumberStri]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7100980].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7100980].[BSSI_Recog_TemplateID]'
GO
GRANT SELECT ON  [dbo].[B7100980] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7100980] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7100980] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7100980] TO [DYNGRP]
GO
