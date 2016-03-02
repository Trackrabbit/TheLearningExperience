CREATE TABLE [dbo].[ECM10003]
(
[PO_REQ_NO] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQ_ORD_ID] [int] NOT NULL,
[ITEM_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEM_DESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VEND_ITEM_ID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VEND_ITEM_DESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VEND_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VEND_NAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMIT_AMT] [numeric] (19, 5) NOT NULL,
[PO_OR_REQ] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ECM10003] ADD CONSTRAINT [PKECM10003] PRIMARY KEY CLUSTERED  ([PO_REQ_NO], [SEQ_ORD_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10003].[PO_REQ_NO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10003].[SEQ_ORD_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10003].[ITEM_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10003].[ITEM_DESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10003].[VEND_ITEM_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10003].[VEND_ITEM_DESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10003].[VEND_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM10003].[VEND_NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ECM10003].[COMMIT_AMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM10003].[PO_OR_REQ]'
GO
GRANT SELECT ON  [dbo].[ECM10003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ECM10003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ECM10003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ECM10003] TO [DYNGRP]
GO
