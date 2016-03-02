CREATE TABLE [dbo].[SY40103]
(
[YEAR1] [smallint] NOT NULL,
[FSTFSCDY] [datetime] NOT NULL,
[LSTFSCDY] [datetime] NOT NULL,
[NUMOFPER] [smallint] NOT NULL,
[HISTORYR] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40103] ADD CONSTRAINT [CK__SY40103__FSTFSCD__104C4D90] CHECK ((datepart(hour,[FSTFSCDY])=(0) AND datepart(minute,[FSTFSCDY])=(0) AND datepart(second,[FSTFSCDY])=(0) AND datepart(millisecond,[FSTFSCDY])=(0)))
GO
ALTER TABLE [dbo].[SY40103] ADD CONSTRAINT [CK__SY40103__LSTFSCD__114071C9] CHECK ((datepart(hour,[LSTFSCDY])=(0) AND datepart(minute,[LSTFSCDY])=(0) AND datepart(second,[LSTFSCDY])=(0) AND datepart(millisecond,[LSTFSCDY])=(0)))
GO
ALTER TABLE [dbo].[SY40103] ADD CONSTRAINT [PKSY40103] PRIMARY KEY NONCLUSTERED  ([YEAR1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY40103] ON [dbo].[SY40103] ([FSTFSCDY], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40103].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40103].[FSTFSCDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40103].[LSTFSCDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40103].[NUMOFPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40103].[HISTORYR]'
GO
GRANT SELECT ON  [dbo].[SY40103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40103] TO [DYNGRP]
GO
