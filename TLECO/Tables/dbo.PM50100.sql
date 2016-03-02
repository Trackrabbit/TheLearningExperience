CREATE TABLE [dbo].[PM50100]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISCAMNT] [numeric] (19, 5) NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEN99AMNT] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[DISAMTAV] [numeric] (19, 5) NOT NULL,
[TRXDSCRN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UN1099AM] [numeric] (19, 5) NOT NULL,
[BKTPURAM] [numeric] (19, 5) NOT NULL,
[BKTFRTAM] [numeric] (19, 5) NOT NULL,
[BKTMSCAM] [numeric] (19, 5) NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[HOLD] [tinyint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DINVPDOF] [datetime] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[PGRAMSBJ] [smallint] NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYENTTYP] [smallint] NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCHAMNT] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[MSCCHAMT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[TTLPYMTS] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PCHSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[DISAVTKN] [numeric] (19, 5) NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PRCTDISC] [smallint] NOT NULL,
[RETNAGAM] [numeric] (19, 5) NOT NULL,
[VOIDPDATE] [datetime] NOT NULL,
[ICTRX] [tinyint] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[PRCHDATE] [datetime] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[Status] [smallint] NOT NULL,
[STR1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__DINVPDO__3BB5CE82] CHECK ((datepart(hour,[DINVPDOF])=(0) AND datepart(minute,[DINVPDOF])=(0) AND datepart(second,[DINVPDOF])=(0) AND datepart(millisecond,[DINVPDOF])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__DISCDAT__3CA9F2BB] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__DOCDATE__3D9E16F4] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__DUEDATE__3E923B2D] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__MODIFDT__3F865F66] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__POSTEDD__407A839F] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__PRCHDAT__416EA7D8] CHECK ((datepart(hour,[PRCHDATE])=(0) AND datepart(minute,[PRCHDATE])=(0) AND datepart(second,[PRCHDATE])=(0) AND datepart(millisecond,[PRCHDATE])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__PSTGDAT__4262CC11] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__Tax_Dat__4356F04A] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [CK__PM50100__VOIDPDA__444B1483] CHECK ((datepart(hour,[VOIDPDATE])=(0) AND datepart(minute,[VOIDPDATE])=(0) AND datepart(second,[VOIDPDATE])=(0) AND datepart(millisecond,[VOIDPDATE])=(0)))
GO
ALTER TABLE [dbo].[PM50100] ADD CONSTRAINT [PKPM50100] PRIMARY KEY NONCLUSTERED  ([USERID], [PRCSSQNC], [Status], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[UN1099AM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[BKTPURAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[BKTFRTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[BKTMSCAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[DINVPDOF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[PGRAMSBJ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[PYENTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[PRCHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[MSCCHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[TTLPYMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[PCHSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[DISAVTKN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[PRCTDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM50100].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[VOIDPDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM50100].[PRCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[PRCSSQNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM50100].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM50100].[STR1]'
GO
GRANT SELECT ON  [dbo].[PM50100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM50100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM50100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM50100] TO [DYNGRP]
GO
