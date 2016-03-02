CREATE TABLE [dbo].[RM40501]
(
[STMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[STMTFORM] [smallint] NOT NULL,
[PRTCRLMT] [tinyint] NOT NULL,
[PRTPYTRM] [tinyint] NOT NULL,
[PRNTFNCH] [tinyint] NOT NULL,
[PRNTMSGS] [tinyint] NOT NULL,
[STMNTFOR] [binary] (4) NOT NULL,
[RSTRACTY] [smallint] NOT NULL,
[CUSTSORT] [smallint] NOT NULL,
[DOCSORTS] [smallint] NOT NULL,
[AGPERAMT_1] [numeric] (19, 5) NOT NULL,
[AGPERAMT_2] [numeric] (19, 5) NOT NULL,
[AGPERAMT_3] [numeric] (19, 5) NOT NULL,
[AGPERAMT_4] [numeric] (19, 5) NOT NULL,
[AGPERAMT_5] [numeric] (19, 5) NOT NULL,
[AGPERAMT_6] [numeric] (19, 5) NOT NULL,
[AGPERAMT_7] [numeric] (19, 5) NOT NULL,
[STMTRSTR] [smallint] NOT NULL,
[RSTRFRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRTOID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRFNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRTNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRFCLS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRTCLS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRFRUD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRTOUD] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTFSPSN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTTSPSN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRFTER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTTOTER] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRFZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTRTZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSTFSTCY] [smallint] NOT NULL,
[RSTTSTCY] [smallint] NOT NULL,
[STMTLPTD] [datetime] NOT NULL,
[PRTDTTKN] [smallint] NOT NULL,
[SUMDTTKN] [smallint] NOT NULL,
[COFDTOKN] [smallint] NOT NULL,
[STMTPRDT] [datetime] NOT NULL,
[SMRYDATE] [datetime] NOT NULL,
[CUTOFDAT] [datetime] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INDCHLDSTMT] [tinyint] NOT NULL,
[Email_Statements_Options] [smallint] NOT NULL,
[Email_Statements_Form] [smallint] NOT NULL,
[EmailStmtsSubjectLine] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RDCOLDPDBYUNAPPLDCR] [tinyint] NOT NULL,
[PrintRemainingDocs] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM40501] ADD CONSTRAINT [CK__RM40501__CUTOFDA__7094A836] CHECK ((datepart(hour,[CUTOFDAT])=(0) AND datepart(minute,[CUTOFDAT])=(0) AND datepart(second,[CUTOFDAT])=(0) AND datepart(millisecond,[CUTOFDAT])=(0)))
GO
ALTER TABLE [dbo].[RM40501] ADD CONSTRAINT [CK__RM40501__SMRYDAT__6FA083FD] CHECK ((datepart(hour,[SMRYDATE])=(0) AND datepart(minute,[SMRYDATE])=(0) AND datepart(second,[SMRYDATE])=(0) AND datepart(millisecond,[SMRYDATE])=(0)))
GO
ALTER TABLE [dbo].[RM40501] ADD CONSTRAINT [CK__RM40501__STMTLPT__6DB83B8B] CHECK ((datepart(hour,[STMTLPTD])=(0) AND datepart(minute,[STMTLPTD])=(0) AND datepart(second,[STMTLPTD])=(0) AND datepart(millisecond,[STMTLPTD])=(0)))
GO
ALTER TABLE [dbo].[RM40501] ADD CONSTRAINT [CK__RM40501__STMTPRD__6EAC5FC4] CHECK ((datepart(hour,[STMTPRDT])=(0) AND datepart(minute,[STMTPRDT])=(0) AND datepart(second,[STMTPRDT])=(0) AND datepart(millisecond,[STMTPRDT])=(0)))
GO
ALTER TABLE [dbo].[RM40501] ADD CONSTRAINT [PKRM40501] PRIMARY KEY NONCLUSTERED  ([STMNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM40501] ON [dbo].[RM40501] ([DSCRIPTN], [STMNTID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM40501] ON [dbo].[RM40501] ([STMTFORM], [STMNTID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[STMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[STMTFORM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRTCRLMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRTPYTRM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRNTFNCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRNTMSGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[STMNTFOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[RSTRACTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[CUSTSORT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[DOCSORTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[AGPERAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[AGPERAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[AGPERAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[AGPERAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[AGPERAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[AGPERAMT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM40501].[AGPERAMT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[STMTRSTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRFRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRTOID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRFNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRTNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRFCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRTCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRFRUD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRTOUD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTFSPSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTTSPSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRFTER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTTOTER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRFZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[RSTRTZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[RSTFSTCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[RSTTSTCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40501].[STMTLPTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRTDTTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[SUMDTTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[COFDTOKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40501].[STMTPRDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40501].[SMRYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM40501].[CUTOFDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[INDCHLDSTMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[Email_Statements_Options]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[Email_Statements_Form]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM40501].[EmailStmtsSubjectLine]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[RDCOLDPDBYUNAPPLDCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM40501].[PrintRemainingDocs]'
GO
GRANT SELECT ON  [dbo].[RM40501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM40501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM40501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM40501] TO [DYNGRP]
GO
