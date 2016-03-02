CREATE TABLE [dbo].[DTA00700]
(
[RPTGRIND] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[STTACNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[STARTGRP] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDGROUP] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRNTDTLD] [tinyint] NOT NULL,
[UNPSTTRX] [tinyint] NOT NULL,
[OPEN1] [tinyint] NOT NULL,
[HISTORY] [tinyint] NOT NULL,
[STTPSTDT] [datetime] NOT NULL,
[ENDPSTDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DTA00700] ADD CONSTRAINT [CK__DTA00700__ENDDAT__77CF7C93] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[DTA00700] ADD CONSTRAINT [CK__DTA00700__ENDPST__79B7C505] CHECK ((datepart(hour,[ENDPSTDT])=(0) AND datepart(minute,[ENDPSTDT])=(0) AND datepart(second,[ENDPSTDT])=(0) AND datepart(millisecond,[ENDPSTDT])=(0)))
GO
ALTER TABLE [dbo].[DTA00700] ADD CONSTRAINT [CK__DTA00700__STRTDA__76DB585A] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[DTA00700] ADD CONSTRAINT [CK__DTA00700__STTPST__78C3A0CC] CHECK ((datepart(hour,[STTPSTDT])=(0) AND datepart(minute,[STTPSTDT])=(0) AND datepart(second,[STTPSTDT])=(0) AND datepart(millisecond,[STTPSTDT])=(0)))
GO
ALTER TABLE [dbo].[DTA00700] ADD CONSTRAINT [PKDTA00700] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DTA00700].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DTA00700].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DTA00700].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[STTACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[STTACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[STTACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[STTACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[EACCNBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[EACCNBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[EACCNBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[EACCNBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DTA00700].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DTA00700].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[STARTGRP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[ENDGROUP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[STRTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DTA00700].[ENDCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DTA00700].[PRNTDTLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DTA00700].[UNPSTTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DTA00700].[OPEN1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DTA00700].[HISTORY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DTA00700].[STTPSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DTA00700].[ENDPSTDT]'
GO
GRANT REFERENCES ON  [dbo].[DTA00700] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[DTA00700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DTA00700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DTA00700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DTA00700] TO [DYNGRP]
GO
