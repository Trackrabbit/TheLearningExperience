CREATE TABLE [dbo].[palbmstr]
(
[LockboxID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LockboxDescription] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paLockboxFormatType] [smallint] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LockboxFileName] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPRTFTYP] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paApplyMethod] [smallint] NOT NULL,
[paApplyMethodInvoice] [smallint] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[OmitStartRecords] [int] NOT NULL,
[OmitLastRecords] [int] NOT NULL,
[paHeaderRowIndicator] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paDeailRowIndicator] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[palbmstr] ADD CONSTRAINT [CK__palbmstr__CREATD__00CA12DE] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[palbmstr] ADD CONSTRAINT [CK__palbmstr__MODIFD__01BE3717] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[palbmstr] ADD CONSTRAINT [PKpalbmstr] PRIMARY KEY NONCLUSTERED  ([LockboxID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbmstr].[LockboxID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbmstr].[LockboxDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbmstr].[paLockboxFormatType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbmstr].[STRGA255]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbmstr].[LockboxFileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbmstr].[XPRTFTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbmstr].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbmstr].[paApplyMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbmstr].[paApplyMethodInvoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbmstr].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbmstr].[OmitStartRecords]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbmstr].[OmitLastRecords]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbmstr].[paHeaderRowIndicator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbmstr].[paDeailRowIndicator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[palbmstr].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[palbmstr].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[palbmstr].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[palbmstr] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[palbmstr] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[palbmstr] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[palbmstr] TO [DYNGRP]
GO
