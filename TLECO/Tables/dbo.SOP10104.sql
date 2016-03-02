CREATE TABLE [dbo].[SOP10104]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCHLDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HOLDDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10104] ADD CONSTRAINT [CK__SOP10104__TIME1__6D6D25A7] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SOP10104] ADD CONSTRAINT [CK__SOP10104__HOLDDA__6C79016E] CHECK ((datepart(hour,[HOLDDATE])=(0) AND datepart(minute,[HOLDDATE])=(0) AND datepart(second,[HOLDDATE])=(0) AND datepart(millisecond,[HOLDDATE])=(0)))
GO
ALTER TABLE [dbo].[SOP10104] ADD CONSTRAINT [PKSOP10104] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [SOPNUMBE], [PRCHLDID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SOP10104] ON [dbo].[SOP10104] ([PRCHLDID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SOP10104] ON [dbo].[SOP10104] ([SOPTYPE], [SOPNUMBE], [HOLDDATE], [PRCHLDID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10104].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10104].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10104].[PRCHLDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10104].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10104].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10104].[HOLDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10104].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10104].[TRXSORCE]'
GO
GRANT SELECT ON  [dbo].[SOP10104] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10104] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10104] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10104] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10104] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10104] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10104] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10104] TO [RAPIDGRP]
GO