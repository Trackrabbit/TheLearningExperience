CREATE TABLE [dbo].[OR022330]
(
[ORSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQORDER_I] [smallint] NOT NULL,
[ORIENTATIONITEM_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERSONRESPONSIBLE_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EVENTSTARTDATE_I] [datetime] NOT NULL,
[EVENTSTARTTIME_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EVENTENDDATE_I] [datetime] NOT NULL,
[EVENTENDTIME_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OR022330] ADD CONSTRAINT [CK__OR022330__EVENTE__1645819C] CHECK ((datepart(hour,[EVENTENDDATE_I])=(0) AND datepart(minute,[EVENTENDDATE_I])=(0) AND datepart(second,[EVENTENDDATE_I])=(0) AND datepart(millisecond,[EVENTENDDATE_I])=(0)))
GO
ALTER TABLE [dbo].[OR022330] ADD CONSTRAINT [CK__OR022330__EVENTS__1739A5D5] CHECK ((datepart(hour,[EVENTSTARTDATE_I])=(0) AND datepart(minute,[EVENTSTARTDATE_I])=(0) AND datepart(second,[EVENTSTARTDATE_I])=(0) AND datepart(millisecond,[EVENTSTARTDATE_I])=(0)))
GO
ALTER TABLE [dbo].[OR022330] ADD CONSTRAINT [PKOR022330] PRIMARY KEY CLUSTERED  ([ORSETUPCODE_I], [SEQORDER_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2OR022330] ON [dbo].[OR022330] ([ORSETUPCODE_I], [ORIENTATIONITEM_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR022330].[ORSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[OR022330].[SEQORDER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR022330].[ORIENTATIONITEM_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR022330].[PERSONRESPONSIBLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[OR022330].[EVENTSTARTDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR022330].[EVENTSTARTTIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[OR022330].[EVENTENDDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[OR022330].[EVENTENDTIME_I]'
GO
GRANT SELECT ON  [dbo].[OR022330] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[OR022330] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[OR022330] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[OR022330] TO [DYNGRP]
GO
