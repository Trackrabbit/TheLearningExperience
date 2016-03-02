CREATE TABLE [dbo].[SVC05003]
(
[RTV_Type] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITLOCN] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Return_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Shipping_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Received_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Closed_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTV_Routing] [smallint] NOT NULL,
[SVC_Purchase_Index] [int] NOT NULL,
[SVC_Cost_Index] [int] NOT NULL,
[SVC_Reimbursement_Index] [int] NOT NULL,
[SVC_Ready_To_Ship_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Partial_Shipped_Stat] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Partial_Received_Sta] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05003] ADD CONSTRAINT [PKSVC05003] PRIMARY KEY CLUSTERED  ([RTV_Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC05003] ON [dbo].[SVC05003] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[RTV_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[ITLOCN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[RTV_Return_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[RTV_Shipping_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[RTV_Received_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[RTV_Closed_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05003].[RTV_Routing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05003].[SVC_Purchase_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05003].[SVC_Cost_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05003].[SVC_Reimbursement_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[SVC_Ready_To_Ship_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[SVC_Partial_Shipped_Stat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05003].[SVC_Partial_Received_Sta]'
GO
GRANT SELECT ON  [dbo].[SVC05003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05003] TO [DYNGRP]
GO
