CREATE TABLE [dbo].[AHRTA330]
(
[TRX_I] [int] NOT NULL,
[GBTATYPE] [smallint] NOT NULL,
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[TRXENDDT] [datetime] NOT NULL,
[TRXERROR_I] [smallint] NOT NULL,
[HOURS_I] [int] NOT NULL,
[HOURSAVAILABLE_I] [int] NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[ACCFLG] [tinyint] NOT NULL,
[ACCRUETIMEBENEFITS_I] [tinyint] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[ATTTYP] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATTRSN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATTTRXSTATUS] [smallint] NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPTRNM] [int] NOT NULL,
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHRTA330] ADD CONSTRAINT [CK__AHRTA330__CHANGE__4A994E4A] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[AHRTA330] ADD CONSTRAINT [CK__AHRTA330__CHANGE__49A52A11] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRTA330] ADD CONSTRAINT [CK__AHRTA330__TRXDAT__4B8D7283] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[AHRTA330] ADD CONSTRAINT [CK__AHRTA330__TRXEND__4C8196BC] CHECK ((datepart(hour,[TRXENDDT])=(0) AND datepart(minute,[TRXENDDT])=(0) AND datepart(second,[TRXENDDT])=(0) AND datepart(millisecond,[TRXENDDT])=(0)))
GO
ALTER TABLE [dbo].[AHRTA330] ADD CONSTRAINT [PKAHRTA330] PRIMARY KEY CLUSTERED  ([TRX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7AHRTA330] ON [dbo].[AHRTA330] ([ATTTRXSTATUS], [BACHNUMB], [COMPTRNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8AHRTA330] ON [dbo].[AHRTA330] ([ATTTRXSTATUS], [CMRECNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6AHRTA330] ON [dbo].[AHRTA330] ([DIVISIONCODE_I], [DEPRTMNT], [EMPID_I], [TRX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AHRTA330] ON [dbo].[AHRTA330] ([EMPID_I], [TRX_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AHRTA330] ON [dbo].[AHRTA330] ([TIMECODE_I], [EMPID_I], [TRXDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5AHRTA330] ON [dbo].[AHRTA330] ([TRXDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[TRX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[GBTATYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[TIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA330].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA330].[TRXENDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[TRXERROR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[HOURS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[HOURSAVAILABLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[ACCFLG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[ACCRUETIMEBENEFITS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[ATTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[ATTRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[ATTTRXSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA330].[COMPTRNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRTA330].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA330].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA330].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA330].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRTA330].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AHRTA330] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHRTA330] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHRTA330] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHRTA330] TO [DYNGRP]
GO
