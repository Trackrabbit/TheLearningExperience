CREATE TABLE [dbo].[B2530500]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
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
[RETNAGAM] [numeric] (19, 5) NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[HOLD] [tinyint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DINVPDOF] [datetime] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[PPSTAXRT] [smallint] NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[POSTEDDT] [datetime] NOT NULL,
[PTDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCSTATUS] [smallint] NOT NULL,
[BKTPURAM] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ICTRX] [tinyint] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[FUNCDOCAMNT] [numeric] (19, 5) NOT NULL,
[FUNCCURTRXAM] [numeric] (19, 5) NOT NULL,
[BackoutTradeDisc] [numeric] (19, 5) NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2530500] ADD CONSTRAINT [CK__B2530500__DINVPD__381450A4] CHECK ((datepart(hour,[DINVPDOF])=(0) AND datepart(minute,[DINVPDOF])=(0) AND datepart(second,[DINVPDOF])=(0) AND datepart(millisecond,[DINVPDOF])=(0)))
GO
ALTER TABLE [dbo].[B2530500] ADD CONSTRAINT [CK__B2530500__DISCDA__362C0832] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530500] ADD CONSTRAINT [CK__B2530500__DOCDAT__3537E3F9] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530500] ADD CONSTRAINT [CK__B2530500__DUEDAT__37202C6B] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[B2530500] ADD CONSTRAINT [CK__B2530500__MODIFD__39FC9916] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B2530500] ADD CONSTRAINT [CK__B2530500__POSTED__390874DD] CHECK ((datepart(hour,[POSTEDDT])=(0) AND datepart(minute,[POSTEDDT])=(0) AND datepart(second,[POSTEDDT])=(0) AND datepart(millisecond,[POSTEDDT])=(0)))
GO
ALTER TABLE [dbo].[B2530500] ADD CONSTRAINT [PKB2530500] PRIMARY KEY NONCLUSTERED  ([USERID], [DOCTYPE], [VCHRNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6B2530500] ON [dbo].[B2530500] ([USERID], [VCHRNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2530500] ON [dbo].[B2530500] ([USERID], [VENDORID], [DOCDATE], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B2530500] ON [dbo].[B2530500] ([USERID], [VENDORID], [DOCNUMBR], [VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1B2530500] ON [dbo].[B2530500] ([USERID], [VENDORID], [DOCTYPE], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2530500] ON [dbo].[B2530500] ([USERID], [VENDORID], [DOCTYPE], [VCHRNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530500].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530500].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530500].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[UN1099AM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[HOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530500].[DINVPDOF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[PPSTAXRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530500].[POSTEDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[PTDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530500].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[BKTPURAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[ICTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2530500].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[FUNCDOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[FUNCCURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530500].[BackoutTradeDisc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530500].[USERID]'
GO
GRANT SELECT ON  [dbo].[B2530500] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2530500] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2530500] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2530500] TO [DYNGRP]
GO
