CREATE TABLE [dbo].[B4600106]
(
[BSSI_Lease_Origin] [smallint] NOT NULL,
[BSSI_Reminder_LeaseType] [smallint] NOT NULL,
[BSSI_EmailSubject] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SendReminder] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_EmailBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4600106] ADD CONSTRAINT [PKB4600106] PRIMARY KEY CLUSTERED  ([BSSI_Lease_Origin], [BSSI_Reminder_LeaseType]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600106].[BSSI_Lease_Origin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600106].[BSSI_Reminder_LeaseType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4600106].[BSSI_EmailSubject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4600106].[BSSI_SendReminder]'
GO
GRANT SELECT ON  [dbo].[B4600106] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4600106] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4600106] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4600106] TO [DYNGRP]
GO
