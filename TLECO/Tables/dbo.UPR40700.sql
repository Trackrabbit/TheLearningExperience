CREATE TABLE [dbo].[UPR40700]
(
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WKCMPMTH] [smallint] NOT NULL,
[WKCMPAMT] [numeric] (19, 5) NOT NULL,
[WKCMPUNT] [numeric] (19, 5) NOT NULL,
[WKCMPCNT] [int] NOT NULL,
[WCMOTMTH] [smallint] NOT NULL,
[WCWGLIMT] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40700] ADD CONSTRAINT [PKUPR40700] PRIMARY KEY NONCLUSTERED  ([WRKRCOMP]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR40700] ON [dbo].[UPR40700] ([DSCRIPTN], [WRKRCOMP]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR40700] ON [dbo].[UPR40700] ([STATECD], [WRKRCOMP]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40700].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40700].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR40700].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40700].[WKCMPMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40700].[WKCMPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40700].[WKCMPUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40700].[WKCMPCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40700].[WCMOTMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40700].[WCWGLIMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR40700].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[UPR40700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40700] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR40700] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[UPR40700] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[UPR40700] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40700] TO [RAPIDGRP]
GO