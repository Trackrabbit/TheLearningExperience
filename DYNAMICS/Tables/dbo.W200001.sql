CREATE TABLE [dbo].[W200001]
(
[RPTNGYR] [smallint] NOT NULL,
[TRANSMTR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSADR] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSCTY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EPRIDNBR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPTRMFG] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNNAME] [char] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNADDR] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNCITY] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNSTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRNZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[W200001] ADD CONSTRAINT [PKW200001] PRIMARY KEY NONCLUSTERED  ([RPTNGYR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[W200001].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[TRANSMTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[TRANSADR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[TRANSCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[EPRIDNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[CMPTRMFG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[RTRNNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[RTRNADDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[RTRNCITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[RTRNSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[W200001].[RTRNZIP]'
GO
GRANT SELECT ON  [dbo].[W200001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[W200001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[W200001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[W200001] TO [DYNGRP]
GO
