CREATE TABLE [dbo].[SY03300]
(
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUETYPE] [smallint] NOT NULL,
[DUEDTDS] [smallint] NOT NULL,
[DISCTYPE] [smallint] NOT NULL,
[DISCDTDS] [smallint] NOT NULL,
[DSCLCTYP] [smallint] NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[SALPURCH] [tinyint] NOT NULL,
[DISCNTCB] [tinyint] NOT NULL,
[FREIGHT] [tinyint] NOT NULL,
[MISC] [tinyint] NOT NULL,
[TAX] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CBUVATMD] [tinyint] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[USEGRPER] [tinyint] NOT NULL,
[CalculateDateFrom] [smallint] NOT NULL,
[CalculateDateFromDays] [smallint] NOT NULL,
[DueMonth] [smallint] NOT NULL,
[DiscountMonth] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY03300] ADD CONSTRAINT [CK__SY03300__CREATDD__0F6B397F] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY03300] ADD CONSTRAINT [CK__SY03300__MODIFDT__0E771546] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY03300] ADD CONSTRAINT [PKSY03300] PRIMARY KEY NONCLUSTERED  ([PYMTRMID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03300].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DUETYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DUEDTDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DISCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DISCDTDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DSCLCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY03300].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[SALPURCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DISCNTCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[FREIGHT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[MISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[TAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY03300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[CBUVATMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY03300].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY03300].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY03300].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[USEGRPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[CalculateDateFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[CalculateDateFromDays]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DueMonth]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY03300].[DiscountMonth]'
GO
GRANT SELECT ON  [dbo].[SY03300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY03300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY03300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY03300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY03300] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SY03300] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SY03300] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SY03300] TO [RAPIDGRP]
GO
