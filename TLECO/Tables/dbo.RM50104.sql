CREATE TABLE [dbo].[RM50104]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCPRFIX] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DOCDESCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[Credit_Amount_String_30] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[BALNCDUE] [numeric] (19, 5) NOT NULL,
[AGNGBUKT] [smallint] NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[CHCUMNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHCUMNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[AMNTPAID] [numeric] (19, 5) NOT NULL,
[RNNMBR] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Process_Index] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM50104] ADD CONSTRAINT [CK__RM50104__DOCDATE__25E688F4] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM50104] ADD CONSTRAINT [PKRM50104] PRIMARY KEY NONCLUSTERED  ([Process_Index], [USERID], [CUSTNMBR], [CURNCYID], [RNNMBR], [DSCRIPTN], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50104].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50104].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[DOCPRFIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50104].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[DOCDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50104].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[Credit_Amount_String_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50104].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50104].[BALNCDUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50104].[AGNGBUKT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50104].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[CHCUMNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[CHCUMNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50104].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50104].[AMNTPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50104].[RNNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50104].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50104].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50104].[Process_Index]'
GO
GRANT SELECT ON  [dbo].[RM50104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM50104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM50104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM50104] TO [DYNGRP]
GO
