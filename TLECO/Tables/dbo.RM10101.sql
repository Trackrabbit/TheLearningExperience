CREATE TABLE [dbo].[RM10101]
(
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[CHANGED] [tinyint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCSTATUS] [smallint] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[PROJCTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CATEGUSD] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE TRIGGER [dbo].[PP_RM10101_Delete] ON [dbo].[RM10101] FOR DELETE AS DELETE FROM PP000100 FROM PP000100 a, deleted b WHERE a.PP_Module = 3 AND a.PP_Record_Type = b.RMDTYPAL AND a.PP_Document_Number = b.DOCNUMBR AND a.PP_Sequencer = b.SEQNUMBR Delete from PP000011   from PP000011 a, deleted b WHERE a.PP_Module = 3 AND a.PP_Record_Type = b.RMDTYPAL AND a.PP_Document_Number = b.DOCNUMBR AND a.PP_Sequencer = b.SEQNUMBR   
GO
ALTER TABLE [dbo].[RM10101] ADD CONSTRAINT [CK__RM10101__POSTEDD__12149A71] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[RM10101] ADD CONSTRAINT [PKRM10101] PRIMARY KEY NONCLUSTERED  ([USERID], [PSTGSTUS], [RMDTYPAL], [DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL5RM10101] ON [dbo].[RM10101] ([DOCNUMBR], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM10101] ON [dbo].[RM10101] ([DOCNUMBR], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM10101] ON [dbo].[RM10101] ([RMDTYPAL], [DOCNUMBR], [DISTTYPE], [SEQNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM10101] ON [dbo].[RM10101] ([TRXSORCE], [DSTINDX], [RMDTYPAL], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM10101] ON [dbo].[RM10101] ([USERID], [PSTGSTUS], [RMDTYPAL], [DOCNUMBR], [DSTINDX], [DISTTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10101].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM10101].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[CHANGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10101].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10101].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[DSTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10101].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10101].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10101].[PROJCTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10101].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[CATEGUSD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10101].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM10101].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10101].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM10101].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM10101].[DistRef]'
GO
GRANT SELECT ON  [dbo].[RM10101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM10101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM10101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM10101] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM10101] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM10101] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM10101] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM10101] TO [RAPIDGRP]
GO
