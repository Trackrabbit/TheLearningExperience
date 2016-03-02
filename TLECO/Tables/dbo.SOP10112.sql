CREATE TABLE [dbo].[SOP10112]
(
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[ORD] [int] NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[SOPSTATUS] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SOP10112] ADD CONSTRAINT [CK__SOP10112__TIME1__0268428D] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SOP10112] ADD CONSTRAINT [CK__SOP10112__Effect__01741E54] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[SOP10112] ADD CONSTRAINT [PKSOP10112] PRIMARY KEY NONCLUSTERED  ([SOPNUMBE], [SOPTYPE], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10112].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10112].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10112].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10112].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SOP10112].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SOP10112].[SOPSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SOP10112].[USERID]'
GO
GRANT SELECT ON  [dbo].[SOP10112] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SOP10112] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SOP10112] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10112] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SOP10112] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[SOP10112] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[SOP10112] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[SOP10112] TO [RAPIDGRP]
GO
