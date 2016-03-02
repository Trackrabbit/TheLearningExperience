CREATE TABLE [dbo].[MC10101]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGSTUS] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTODCTY] [smallint] NOT NULL,
[APTODCNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[DSTINDX] [int] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTED] [tinyint] NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[CHANGED] [tinyint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[MCSTRUCT_1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MCSTRUCT_2] [smallint] NOT NULL,
[MCSTRUCT_3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MCSTRUCT_4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MCSTRUCT_5] [numeric] (19, 7) NOT NULL,
[MCSTRUCT_6] [datetime] NOT NULL,
[MCSTRUCT_7] [smallint] NOT NULL,
[MCSTRUCT_8] [datetime] NOT NULL,
[MCSTRUCT_9] [smallint] NOT NULL,
[MCSTRUCT_10] [smallint] NOT NULL,
[MCSTRUCT_11] [smallint] NOT NULL,
[MCSTRUCT_12] [datetime] NOT NULL,
[MCSTRUCT_13] [numeric] (19, 7) NOT NULL,
[MCSTRUCT_14] [smallint] NOT NULL,
[SPCLDIST] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC10101] ADD CONSTRAINT [CK__MC10101__MCSTRUC__4885B9BB] CHECK ((datepart(day,[MCSTRUCT_8])=(1) AND datepart(month,[MCSTRUCT_8])=(1) AND datepart(year,[MCSTRUCT_8])=(1900)))
GO
ALTER TABLE [dbo].[MC10101] ADD CONSTRAINT [CK__MC10101__MCSTRUC__4979DDF4] CHECK ((datepart(hour,[MCSTRUCT_12])=(0) AND datepart(minute,[MCSTRUCT_12])=(0) AND datepart(second,[MCSTRUCT_12])=(0) AND datepart(millisecond,[MCSTRUCT_12])=(0)))
GO
ALTER TABLE [dbo].[MC10101] ADD CONSTRAINT [CK__MC10101__MCSTRUC__47919582] CHECK ((datepart(hour,[MCSTRUCT_6])=(0) AND datepart(minute,[MCSTRUCT_6])=(0) AND datepart(second,[MCSTRUCT_6])=(0) AND datepart(millisecond,[MCSTRUCT_6])=(0)))
GO
ALTER TABLE [dbo].[MC10101] ADD CONSTRAINT [CK__MC10101__POSTEDD__4A6E022D] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[MC10101] ADD CONSTRAINT [PKMC10101] PRIMARY KEY NONCLUSTERED  ([USERID], [PSTGSTUS], [RMDTYPAL], [DOCNUMBR], [SPCLDIST], [APTODCTY], [APTODCNM], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MC10101] ON [dbo].[MC10101] ([USERID], [PSTGSTUS], [RMDTYPAL], [DOCNUMBR], [SPCLDIST], [CUSTNMBR], [APTODCTY], [APTODCNM], [MCSTRUCT_1], [DISTTYPE], [DSTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[PSTGSTUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[APTODCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[APTODCNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[DSTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC10101].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[CHANGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC10101].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC10101].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC10101].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC10101].[ORDBTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[MCSTRUCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[MCSTRUCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[MCSTRUCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10101].[MCSTRUCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC10101].[MCSTRUCT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC10101].[MCSTRUCT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[MCSTRUCT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC10101].[MCSTRUCT_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[MCSTRUCT_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[MCSTRUCT_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[MCSTRUCT_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC10101].[MCSTRUCT_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MC10101].[MCSTRUCT_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[MCSTRUCT_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10101].[SPCLDIST]'
GO
GRANT SELECT ON  [dbo].[MC10101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC10101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC10101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC10101] TO [DYNGRP]
GO
