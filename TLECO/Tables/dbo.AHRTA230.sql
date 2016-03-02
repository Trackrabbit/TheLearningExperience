CREATE TABLE [dbo].[AHRTA230]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[HOURSAVAILABLE_I] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHRTA230] ADD CONSTRAINT [PKAHRTA230] PRIMARY KEY CLUSTERED  ([EMPID_I], [TIMECODE_I], [YEAR1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA230].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA230].[TIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA230].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA230].[HOURSAVAILABLE_I]'
GO
GRANT SELECT ON  [dbo].[AHRTA230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHRTA230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHRTA230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHRTA230] TO [DYNGRP]
GO
