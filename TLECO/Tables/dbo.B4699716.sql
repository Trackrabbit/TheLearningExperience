CREATE TABLE [dbo].[B4699716]
(
[BSSI_Lease_Origin] [smallint] NOT NULL,
[BSSI_Reminder_LeaseType] [smallint] NOT NULL,
[BSSI_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ReminderSent_Date] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4699716] ADD CONSTRAINT [CK__B4699716__BSSI_R__3DF38043] CHECK ((datepart(hour,[BSSI_ReminderSent_Date])=(0) AND datepart(minute,[BSSI_ReminderSent_Date])=(0) AND datepart(second,[BSSI_ReminderSent_Date])=(0) AND datepart(millisecond,[BSSI_ReminderSent_Date])=(0)))
GO
ALTER TABLE [dbo].[B4699716] ADD CONSTRAINT [PKB4699716] PRIMARY KEY CLUSTERED  ([BSSI_Lease_Origin], [BSSI_Reminder_LeaseType], [BSSI_Lease_Number], [LNITMSEQ], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4699716] ON [dbo].[B4699716] ([BSSI_Lease_Origin], [BSSI_Reminder_LeaseType], [BSSI_Lease_Number], [LOCNCODE], [BSSI_Charge_ID], [LNSEQNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699716].[BSSI_Lease_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699716].[BSSI_Reminder_LeaseType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699716].[BSSI_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699716].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699716].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699716].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699716].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699716].[BSSI_ReminderSent_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699716].[USERID]'
GO
GRANT SELECT ON  [dbo].[B4699716] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4699716] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4699716] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4699716] TO [DYNGRP]
GO
