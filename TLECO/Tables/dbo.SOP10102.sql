CREATE TABLE [dbo].[SOP10102]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[Contract_Exchange_Rate] [numeric] (19, 7) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE TRIGGER [dbo].[PP_SOP10102_Delete] ON [dbo].[SOP10102] FOR DELETE AS DELETE FROM PP000100 FROM PP000100 a, deleted b WHERE a.PP_Module = 5 AND a.PP_Record_Type = b.SOPTYPE AND a.PP_Document_Number = b.SOPNUMBE AND a.PP_Sequencer = b.SEQNUMBR DELETE FROM PP000011 FROM PP000011 a, deleted b WHERE a.PP_Module = 5 AND a.PP_Record_Type = b.SOPTYPE AND a.PP_Document_Number = b.SOPNUMBE AND a.PP_Sequencer = b.SEQNUMBR   
GO
ALTER TABLE [dbo].[SOP10102] ADD CONSTRAINT [PKSOP10102] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [SOPNUMBE], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP10102] ON [dbo].[SOP10102] ([SOPNUMBE], [SEQNUMBR], [SOPTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10102] ON [dbo].[SOP10102] ([SOPTYPE], [SOPNUMBE], [DISTTYPE], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10102].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10102].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10102].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10102].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10102].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10102].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10102].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10102].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10102].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10102].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10102].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10102].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10102].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SOP10102].[Contract_Exchange_Rate]'
GO
GRANT SELECT ON  [dbo].[SOP10102] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10102] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10102] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10102] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10102] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10102] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10102] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10102] TO [RAPIDGRP]
GO
