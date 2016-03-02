CREATE TABLE [dbo].[palbdtl]
(
[LockboxID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paRowType] [smallint] NOT NULL,
[paFieldNumber] [smallint] NOT NULL,
[paMapsTo] [smallint] NOT NULL,
[paStartPosition] [smallint] NOT NULL,
[EndPosition] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[palbdtl] ADD CONSTRAINT [PKpalbdtl] PRIMARY KEY NONCLUSTERED  ([LockboxID], [paRowType], [paFieldNumber]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[palbdtl].[LockboxID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbdtl].[paRowType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbdtl].[paFieldNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbdtl].[paMapsTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbdtl].[paStartPosition]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[palbdtl].[EndPosition]'
GO
GRANT SELECT ON  [dbo].[palbdtl] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[palbdtl] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[palbdtl] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[palbdtl] TO [DYNGRP]
GO
