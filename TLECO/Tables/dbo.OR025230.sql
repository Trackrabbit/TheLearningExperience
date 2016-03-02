CREATE TABLE [dbo].[OR025230]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQORDER_I] [smallint] NOT NULL,
[ORCOMPLETEDCB_I] [tinyint] NOT NULL,
[ORIENTATIONITEM_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERSONRESPONSIBLE_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EVENTSTARTDATE_I] [datetime] NOT NULL,
[EVENTSTARTTIME_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EVENTENDDATE_I] [datetime] NOT NULL,
[EVENTENDTIME_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OR025230] ADD CONSTRAINT [CK__OR025230__EVENTE__1A161280] CHECK ((datepart(hour,[EVENTENDDATE_I])=(0) AND datepart(minute,[EVENTENDDATE_I])=(0) AND datepart(second,[EVENTENDDATE_I])=(0) AND datepart(millisecond,[EVENTENDDATE_I])=(0)))
GO
ALTER TABLE [dbo].[OR025230] ADD CONSTRAINT [CK__OR025230__EVENTS__1B0A36B9] CHECK ((datepart(hour,[EVENTSTARTDATE_I])=(0) AND datepart(minute,[EVENTSTARTDATE_I])=(0) AND datepart(second,[EVENTSTARTDATE_I])=(0) AND datepart(millisecond,[EVENTSTARTDATE_I])=(0)))
GO
ALTER TABLE [dbo].[OR025230] ADD CONSTRAINT [PKOR025230] PRIMARY KEY CLUSTERED  ([EMPID_I], [SEQORDER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2OR025230] ON [dbo].[OR025230] ([EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR025230].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[OR025230].[SEQORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[OR025230].[ORCOMPLETEDCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR025230].[ORIENTATIONITEM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR025230].[PERSONRESPONSIBLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[OR025230].[EVENTSTARTDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR025230].[EVENTSTARTTIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[OR025230].[EVENTENDDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR025230].[EVENTENDTIME_I]'
GO
GRANT SELECT ON  [dbo].[OR025230] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[OR025230] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[OR025230] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[OR025230] TO [DYNGRP]
GO
