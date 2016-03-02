CREATE TABLE [dbo].[SVC00920]
(
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABITMST] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABITMOV] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LABITMDB] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Hotline_Labor_Item] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Travel_Labor_Item] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMFLAG] [tinyint] NOT NULL,
[CONTFLAG] [tinyint] NOT NULL,
[SVC_Service_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Service_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Sales_Only] [tinyint] NOT NULL,
[SVC_S_Credit_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_S_Credit_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Zero_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Zero_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Minimum_Labor] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Minimum_Travel] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Minimum_Hotline] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Rounded_Labor] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Rounded_Travel] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Rounded_Hotline] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Sales_Index_Part] [int] NOT NULL,
[SVC_Sales_Index_Labor] [int] NOT NULL,
[SVC_Sales_Index_Misc] [int] NOT NULL,
[SVC_Sales_Index_Expense] [int] NOT NULL,
[SVC_COGS_Index_Part] [int] NOT NULL,
[SVC_COGS_Index_Labor] [int] NOT NULL,
[SVC_COGS_Index_Misc] [int] NOT NULL,
[SVC_COGS_Index_Expense] [int] NOT NULL,
[SVC_Sales_Return_Index] [int] NOT NULL,
[svcPayableBatchID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcSubcontractor] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00920] ADD CONSTRAINT [PKSVC00920] PRIMARY KEY CLUSTERED  ([SRVTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00920] ON [dbo].[SVC00920] ([DSCRIPTN], [SRVTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[LABITMST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[LABITMOV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[LABITMDB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[Hotline_Labor_Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[Travel_Labor_Item]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[PMFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[CONTFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Service_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Service_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_Sales_Only]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_S_Credit_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_S_Credit_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Zero_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Zero_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Minimum_Labor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Minimum_Travel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Minimum_Hotline]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Rounded_Labor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Rounded_Travel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[SVC_Rounded_Hotline]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_Sales_Index_Part]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_Sales_Index_Labor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_Sales_Index_Misc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_Sales_Index_Expense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_COGS_Index_Part]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_COGS_Index_Labor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_COGS_Index_Misc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_COGS_Index_Expense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[SVC_Sales_Return_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00920].[svcPayableBatchID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00920].[svcSubcontractor]'
GO
GRANT SELECT ON  [dbo].[SVC00920] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00920] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00920] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00920] TO [DYNGRP]
GO
