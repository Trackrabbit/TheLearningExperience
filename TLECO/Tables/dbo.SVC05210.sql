CREATE TABLE [dbo].[SVC05210]
(
[Return_Record_Type] [smallint] NOT NULL,
[RETDOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SVC_Process_SEQ_Number] [numeric] (19, 5) NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[Return_QTY] [numeric] (19, 5) NOT NULL,
[SVC_Process_QTY] [numeric] (19, 5) NOT NULL,
[SVC_Process_Type] [smallint] NOT NULL,
[Return_Disposition_Statu] [smallint] NOT NULL,
[SVC_Process_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Document_Number] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_IV_SEQ_Number] [numeric] (19, 5) NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[QTYTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC05210] ADD CONSTRAINT [PKSVC05210] PRIMARY KEY NONCLUSTERED  ([Return_Record_Type], [RETDOCID], [LNSEQNBR], [CMPNTSEQ], [SVC_Process_SEQ_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05210].[Return_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05210].[RETDOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05210].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05210].[SVC_Process_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05210].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05210].[Return_QTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05210].[SVC_Process_QTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05210].[SVC_Process_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05210].[Return_Disposition_Statu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05210].[SVC_Process_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC05210].[SVC_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC05210].[SVC_IV_SEQ_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05210].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC05210].[QTYTYPE]'
GO
GRANT SELECT ON  [dbo].[SVC05210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC05210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC05210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC05210] TO [DYNGRP]
GO
