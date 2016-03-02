CREATE TABLE [dbo].[PM10901]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIME1] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMVDMSGS] [binary] (4) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISCAMNT] [numeric] (19, 5) NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEN99AMNT] [numeric] (19, 5) NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[DISAMTAV] [numeric] (19, 5) NOT NULL,
[PRCHAMNT] [numeric] (19, 5) NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[MSCCHAMT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[TTLPYMTS] [numeric] (19, 5) NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEYDESCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDDATE] [datetime] NOT NULL,
[VADCDTRO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM10901] ADD CONSTRAINT [CK__PM10901__TIME1__68BD7F23] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[PM10901] ADD CONSTRAINT [CK__PM10901__DISCDAT__65E11278] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10901] ADD CONSTRAINT [CK__PM10901__DOCDATE__66D536B1] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10901] ADD CONSTRAINT [CK__PM10901__PSTGDAT__67C95AEA] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10901] ADD CONSTRAINT [CK__PM10901__VOIDDAT__69B1A35C] CHECK ((datepart(hour,[VOIDDATE])=(0) AND datepart(minute,[VOIDDATE])=(0) AND datepart(second,[VOIDDATE])=(0) AND datepart(millisecond,[VOIDDATE])=(0)))
GO
ALTER TABLE [dbo].[PM10901] ADD CONSTRAINT [PKPM10901] PRIMARY KEY NONCLUSTERED  ([USERID], [TIME1], [VENDORID], [DOCTYPE], [VCHRNMBR], [DEYDESCR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10901].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10901].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM10901].[PMVDMSGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10901].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10901].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[TEN99AMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[DISAMTAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[PRCHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[MSCCHAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM10901].[TTLPYMTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10901].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[DEYDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM10901].[VOIDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM10901].[VADCDTRO]'
GO
GRANT SELECT ON  [dbo].[PM10901] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM10901] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM10901] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM10901] TO [DYNGRP]
GO
