CREATE TABLE [dbo].[CM20400]
(
[CMDNUMWK] [numeric] (19, 5) NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEBITAMT] [numeric] (19, 5) NOT NULL,
[CRDTAMNT] [numeric] (19, 5) NOT NULL,
[DistRef] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[ORCRDAMT] [numeric] (19, 5) NOT NULL,
[ORDBTAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20400] ADD CONSTRAINT [CK__CM20400__GLPOSTD__489AC854] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[CM20400] ADD CONSTRAINT [PKCM20400] PRIMARY KEY NONCLUSTERED  ([CMDNUMWK], [VOIDED], [DSTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20400].[CMDNUMWK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20400].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20400].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20400].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20400].[DEBITAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20400].[CRDTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20400].[DistRef]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20400].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20400].[ORCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20400].[ORDBTAMT]'
GO
GRANT SELECT ON  [dbo].[CM20400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20400] TO [DYNGRP]
GO
