CREATE TABLE [dbo].[ME240460]
(
[Queue_ID] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MECHKID] [int] NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[ME_Refund_Check] [tinyint] NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Voided] [smallint] NOT NULL,
[MESEQNUMBR] [int] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240460] ADD CONSTRAINT [CK__ME240460__DOCDAT__5E0E45AC] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[ME240460] ADD CONSTRAINT [PKME240460] PRIMARY KEY NONCLUSTERED  ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [PMNTNMBR], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME240460] ON [dbo].[ME240460] ([CHEKBKID], [PMNTNMBR], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ME240460] ON [dbo].[ME240460] ([Queue_ID], [CHEKBKID], [BACHNUMB], [USERID], [MECHKID], [PMNTNMBR], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240460].[Queue_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240460].[MECHKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240460].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240460].[ME_Refund_Check]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME240460].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240460].[ME_Voided]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240460].[MESEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240460].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240460].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[ME240460] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240460] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240460] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240460] TO [DYNGRP]
GO
