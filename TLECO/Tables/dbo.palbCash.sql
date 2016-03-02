CREATE TABLE [dbo].[palbCash]
(
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKBRNCH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKACTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LockboxID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERRSTATE] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[palbCash] ADD CONSTRAINT [PKpalbCash] PRIMARY KEY NONCLUSTERED  ([BACHNUMB], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2palbCash] ON [dbo].[palbCash] ([BACHNUMB], [BNKBRNCH], [BANKNAME], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3palbCash] ON [dbo].[palbCash] ([BACHNUMB], [CUSTNMBR], [CUSTNAME], [DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbCash].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[BNKBRNCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[BANKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[BNKACTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbCash].[LockboxID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbCash].[ERRSTATE]'
GO
GRANT SELECT ON  [dbo].[palbCash] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[palbCash] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[palbCash] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[palbCash] TO [DYNGRP]
GO
