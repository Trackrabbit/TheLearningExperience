CREATE TABLE [dbo].[paActvty]
(
[LockboxID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHTOTAL] [numeric] (19, 5) NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[NoOfTrxRejected] [int] NOT NULL,
[STRNG132] [char] (133) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[paActvty] ADD CONSTRAINT [CK__paActvty__TIME1__7834CCDD] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[paActvty] ADD CONSTRAINT [CK__paActvty__DATE1__7740A8A4] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[paActvty] ADD CONSTRAINT [PKpaActvty] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1paActvty] ON [dbo].[paActvty] ([LockboxID], [DATE1], [TIME1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[paActvty].[LockboxID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[paActvty].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[paActvty].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[paActvty].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[paActvty].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[paActvty].[BCHTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[paActvty].[NUMOFTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[paActvty].[NoOfTrxRejected]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[paActvty].[STRNG132]'
GO
GRANT SELECT ON  [dbo].[paActvty] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[paActvty] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[paActvty] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[paActvty] TO [DYNGRP]
GO
