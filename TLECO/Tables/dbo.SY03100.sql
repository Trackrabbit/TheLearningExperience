CREATE TABLE [dbo].[SY03100]
(
[PYBLGRBX] [smallint] NOT NULL,
[RCVBGRBX] [smallint] NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBPAYBLE] [tinyint] NOT NULL,
[CBRCVBLE] [tinyint] NOT NULL,
[CKBKNUM1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CKBKNUM2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTINDX] [int] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY03100] ADD CONSTRAINT [CK__SY03100__CREATDD__47D18CA4] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY03100] ADD CONSTRAINT [CK__SY03100__MODIFDT__48C5B0DD] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY03100] ADD CONSTRAINT [PKSY03100] PRIMARY KEY NONCLUSTERED  ([CARDNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03100].[PYBLGRBX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03100].[RCVBGRBX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03100].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03100].[CBPAYBLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03100].[CBRCVBLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03100].[CKBKNUM1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03100].[CKBKNUM2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY03100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03100].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY03100].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY03100].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SY03100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY03100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY03100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY03100] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY03100] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY03100] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY03100] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY03100] TO [RAPIDGRP]
GO
