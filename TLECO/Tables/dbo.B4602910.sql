CREATE TABLE [dbo].[B4602910]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Period] [smallint] NOT NULL,
[BSSI_Period_Begin] [datetime] NOT NULL,
[BSSI_Period_End] [datetime] NOT NULL,
[BSSI_Renewal_Type] [smallint] NOT NULL,
[BSSI_Lead_Time] [smallint] NOT NULL,
[BSSI_Notice_Deadline] [datetime] NOT NULL,
[BSSI_Actual_Notice_Date] [datetime] NOT NULL,
[BSSI_Sent_Notice] [tinyint] NOT NULL,
[BSSI_Received_Notice] [tinyint] NOT NULL,
[BSSI_Notice_Requirements] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602910] ADD CONSTRAINT [CK__B4602910__BSSI_A__00FCECCD] CHECK ((datepart(hour,[BSSI_Actual_Notice_Date])=(0) AND datepart(minute,[BSSI_Actual_Notice_Date])=(0) AND datepart(second,[BSSI_Actual_Notice_Date])=(0) AND datepart(millisecond,[BSSI_Actual_Notice_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602910] ADD CONSTRAINT [CK__B4602910__BSSI_N__0008C894] CHECK ((datepart(hour,[BSSI_Notice_Deadline])=(0) AND datepart(minute,[BSSI_Notice_Deadline])=(0) AND datepart(second,[BSSI_Notice_Deadline])=(0) AND datepart(millisecond,[BSSI_Notice_Deadline])=(0)))
GO
ALTER TABLE [dbo].[B4602910] ADD CONSTRAINT [CK__B4602910__BSSI_P__7E208022] CHECK ((datepart(hour,[BSSI_Period_Begin])=(0) AND datepart(minute,[BSSI_Period_Begin])=(0) AND datepart(second,[BSSI_Period_Begin])=(0) AND datepart(millisecond,[BSSI_Period_Begin])=(0)))
GO
ALTER TABLE [dbo].[B4602910] ADD CONSTRAINT [CK__B4602910__BSSI_P__7F14A45B] CHECK ((datepart(hour,[BSSI_Period_End])=(0) AND datepart(minute,[BSSI_Period_End])=(0) AND datepart(second,[BSSI_Period_End])=(0) AND datepart(millisecond,[BSSI_Period_End])=(0)))
GO
ALTER TABLE [dbo].[B4602910] ADD CONSTRAINT [PKB4602910] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602910] ON [dbo].[B4602910] ([BSSI_Ground_Lease_Number], [BSSI_Period], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602910].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602910].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602910].[BSSI_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602910].[BSSI_Period_Begin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602910].[BSSI_Period_End]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602910].[BSSI_Renewal_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602910].[BSSI_Lead_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602910].[BSSI_Notice_Deadline]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602910].[BSSI_Actual_Notice_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602910].[BSSI_Sent_Notice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602910].[BSSI_Received_Notice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602910].[BSSI_Notice_Requirements]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602910].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602910] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602910] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602910] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602910] TO [DYNGRP]
GO
