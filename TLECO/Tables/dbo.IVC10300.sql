CREATE TABLE [dbo].[IVC10300]
(
[DOCTYPE] [smallint] NOT NULL,
[INVCNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE TRIGGER [dbo].[PP_IVC10300_Delete] ON [dbo].[IVC10300] FOR DELETE AS DELETE FROM PP000100 FROM PP000100 a, deleted b WHERE a.PP_Module = 6 AND a.PP_Record_Type = b.DOCTYPE AND a.PP_Document_Number = b.INVCNMBR AND a.PP_Sequencer = b.SEQNUMBR DELETE FROM PP000011 FROM PP000011 a, deleted b WHERE a.PP_Module = 6 AND a.PP_Record_Type = b.DOCTYPE AND a.PP_Document_Number = b.INVCNMBR AND a.PP_Sequencer = b.SEQNUMBR   
GO
ALTER TABLE [dbo].[IVC10300] ADD CONSTRAINT [PKIVC10300] PRIMARY KEY NONCLUSTERED  ([DOCTYPE], [INVCNMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IVC10300] ON [dbo].[IVC10300] ([DOCTYPE], [INVCNMBR], [DISTTYPE], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4IVC10300] ON [dbo].[IVC10300] ([POSTED], [ACTINDX], [INVCNMBR], [DOCTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IVC10300] ON [dbo].[IVC10300] ([TRXSORCE], [ACTINDX], [DOCTYPE], [INVCNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10300].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10300].[INVCNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10300].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10300].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10300].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10300].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10300].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IVC10300].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IVC10300].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IVC10300].[POSTED]'
GO
GRANT SELECT ON  [dbo].[IVC10300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IVC10300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IVC10300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IVC10300] TO [DYNGRP]
GO
