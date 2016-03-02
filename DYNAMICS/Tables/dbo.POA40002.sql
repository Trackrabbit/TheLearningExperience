CREATE TABLE [dbo].[POA40002]
(
[APRVLUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[POA_Approval_Type] [smallint] NOT NULL,
[POA_Approval_Authority_A] [numeric] (19, 5) NOT NULL,
[POA_Report_To_User_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POA_Security_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[POA40002] ADD CONSTRAINT [PKPOA40002] PRIMARY KEY NONCLUSTERED  ([APRVLUSERID], [CMPANYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POA40002] ON [dbo].[POA40002] ([CMPANYID], [APRVLUSERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POA40002] ON [dbo].[POA40002] ([CMPANYID], [POA_Approval_Type], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POA40002].[APRVLUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POA40002].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POA40002].[POA_Approval_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POA40002].[POA_Approval_Authority_A]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POA40002].[POA_Report_To_User_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POA40002].[POA_Security_Type]'
GO
GRANT SELECT ON  [dbo].[POA40002] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POA40002] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POA40002] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POA40002] TO [DYNGRP]
GO
