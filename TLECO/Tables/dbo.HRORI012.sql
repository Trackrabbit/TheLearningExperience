CREATE TABLE [dbo].[HRORI012]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MAIDENNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[I9ALIENUNTILCB_I] [tinyint] NOT NULL,
[I9CITIZENCB_I] [tinyint] NOT NULL,
[I9LPRESIDENT_I] [tinyint] NOT NULL,
[ISTARTDATE_I] [datetime] NOT NULL,
[DOCUMENT#A1_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCUMENT#A2_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCUMENT#B_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCUMENT#C_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCUMENTTITLEA_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCUMENTTITLEB_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCUMENTTITLEC_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPIRATIONA1_I] [datetime] NOT NULL,
[EXPIRATIONA2_I] [datetime] NOT NULL,
[EXPIRATIONB_I] [datetime] NOT NULL,
[EXPIRATIONC_I] [datetime] NOT NULL,
[ISSUEAUTHORITYA_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISSUEAUTHORITYB_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISSUEAUTHORITYC_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALIENADMINNUMBER_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALIENNUMBER_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALIENUNTILDATE_I] [datetime] NOT NULL,
[DATEFILED_I] [datetime] NOT NULL,
[PREPARERSNAME_I] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PREPARERADDRESS_I] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEIN_I] [datetime] NOT NULL,
[EMPLOYERNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TITLE1_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TITLE2_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BUSNAMEADDR_I] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NEWNAME_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REHIREDATE_I] [datetime] NOT NULL,
[O3CDATEEXPIRE_I] [datetime] NOT NULL,
[O3CDOCU#_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[O3CDOCUTITLE_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATESIGNED_I] [datetime] NOT NULL,
[DATEOFLASTCHANGE_I] [datetime] NOT NULL,
[EXITDATE] [datetime] NOT NULL,
[REENTRYDATE] [datetime] NOT NULL,
[i9_Non_Citizen_CB] [tinyint] NOT NULL,
[CCodeDesc] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FOREIGNPASSNUMBER] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__ALIENU__24C8AB1D] CHECK ((datepart(hour,[ALIENUNTILDATE_I])=(0) AND datepart(minute,[ALIENUNTILDATE_I])=(0) AND datepart(second,[ALIENUNTILDATE_I])=(0) AND datepart(millisecond,[ALIENUNTILDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__DATEFI__25BCCF56] CHECK ((datepart(hour,[DATEFILED_I])=(0) AND datepart(minute,[DATEFILED_I])=(0) AND datepart(second,[DATEFILED_I])=(0) AND datepart(millisecond,[DATEFILED_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__DATEIN__26B0F38F] CHECK ((datepart(hour,[DATEIN_I])=(0) AND datepart(minute,[DATEIN_I])=(0) AND datepart(second,[DATEIN_I])=(0) AND datepart(millisecond,[DATEIN_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__DATEOF__27A517C8] CHECK ((datepart(hour,[DATEOFLASTCHANGE_I])=(0) AND datepart(minute,[DATEOFLASTCHANGE_I])=(0) AND datepart(second,[DATEOFLASTCHANGE_I])=(0) AND datepart(millisecond,[DATEOFLASTCHANGE_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__DATESI__28993C01] CHECK ((datepart(hour,[DATESIGNED_I])=(0) AND datepart(minute,[DATESIGNED_I])=(0) AND datepart(second,[DATESIGNED_I])=(0) AND datepart(millisecond,[DATESIGNED_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__EXITDA__298D603A] CHECK ((datepart(hour,[EXITDATE])=(0) AND datepart(minute,[EXITDATE])=(0) AND datepart(second,[EXITDATE])=(0) AND datepart(millisecond,[EXITDATE])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__EXPIRA__2A818473] CHECK ((datepart(hour,[EXPIRATIONA1_I])=(0) AND datepart(minute,[EXPIRATIONA1_I])=(0) AND datepart(second,[EXPIRATIONA1_I])=(0) AND datepart(millisecond,[EXPIRATIONA1_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__EXPIRA__2B75A8AC] CHECK ((datepart(hour,[EXPIRATIONA2_I])=(0) AND datepart(minute,[EXPIRATIONA2_I])=(0) AND datepart(second,[EXPIRATIONA2_I])=(0) AND datepart(millisecond,[EXPIRATIONA2_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__EXPIRA__2C69CCE5] CHECK ((datepart(hour,[EXPIRATIONB_I])=(0) AND datepart(minute,[EXPIRATIONB_I])=(0) AND datepart(second,[EXPIRATIONB_I])=(0) AND datepart(millisecond,[EXPIRATIONB_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__EXPIRA__2D5DF11E] CHECK ((datepart(hour,[EXPIRATIONC_I])=(0) AND datepart(minute,[EXPIRATIONC_I])=(0) AND datepart(second,[EXPIRATIONC_I])=(0) AND datepart(millisecond,[EXPIRATIONC_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__ISTART__2E521557] CHECK ((datepart(hour,[ISTARTDATE_I])=(0) AND datepart(minute,[ISTARTDATE_I])=(0) AND datepart(second,[ISTARTDATE_I])=(0) AND datepart(millisecond,[ISTARTDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__O3CDAT__2F463990] CHECK ((datepart(hour,[O3CDATEEXPIRE_I])=(0) AND datepart(minute,[O3CDATEEXPIRE_I])=(0) AND datepart(second,[O3CDATEEXPIRE_I])=(0) AND datepart(millisecond,[O3CDATEEXPIRE_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__REENTR__303A5DC9] CHECK ((datepart(hour,[REENTRYDATE])=(0) AND datepart(minute,[REENTRYDATE])=(0) AND datepart(second,[REENTRYDATE])=(0) AND datepart(millisecond,[REENTRYDATE])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [CK__HRORI012__REHIRE__312E8202] CHECK ((datepart(hour,[REHIREDATE_I])=(0) AND datepart(minute,[REHIREDATE_I])=(0) AND datepart(second,[REHIREDATE_I])=(0) AND datepart(millisecond,[REHIREDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HRORI012] ADD CONSTRAINT [PKHRORI012] PRIMARY KEY CLUSTERED  ([EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[MAIDENNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRORI012].[I9ALIENUNTILCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRORI012].[I9CITIZENCB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRORI012].[I9LPRESIDENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[ISTARTDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[DOCUMENT#A1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[DOCUMENT#A2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[DOCUMENT#B_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[DOCUMENT#C_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[DOCUMENTTITLEA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[DOCUMENTTITLEB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[DOCUMENTTITLEC_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[EXPIRATIONA1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[EXPIRATIONA2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[EXPIRATIONB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[EXPIRATIONC_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[ISSUEAUTHORITYA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[ISSUEAUTHORITYB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[ISSUEAUTHORITYC_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[ALIENADMINNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[ALIENNUMBER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[ALIENUNTILDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[DATEFILED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[PREPARERSNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[PREPARERADDRESS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[DATEIN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[EMPLOYERNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[TITLE1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[TITLE2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[BUSNAMEADDR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[NEWNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[REHIREDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[O3CDATEEXPIRE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[O3CDOCU#_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[O3CDOCUTITLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[DATESIGNED_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[DATEOFLASTCHANGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[EXITDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HRORI012].[REENTRYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HRORI012].[i9_Non_Citizen_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[CCodeDesc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HRORI012].[FOREIGNPASSNUMBER]'
GO
GRANT SELECT ON  [dbo].[HRORI012] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HRORI012] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HRORI012] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HRORI012] TO [DYNGRP]
GO
