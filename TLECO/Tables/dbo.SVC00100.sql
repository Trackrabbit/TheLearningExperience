CREATE TABLE [dbo].[SVC00100]
(
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MANAGER] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAGER1] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PIN1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAGER2] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PIN2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHEMAIL] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHEMAIL2] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKDYS_1] [tinyint] NOT NULL,
[WORKDYS_2] [tinyint] NOT NULL,
[WORKDYS_3] [tinyint] NOT NULL,
[WORKDYS_4] [tinyint] NOT NULL,
[WORKDYS_5] [tinyint] NOT NULL,
[WORKDYS_6] [tinyint] NOT NULL,
[WORKDYS_7] [tinyint] NOT NULL,
[WORKSTRT_1] [datetime] NOT NULL,
[WORKSTRT_2] [datetime] NOT NULL,
[WORKSTRT_3] [datetime] NOT NULL,
[WORKSTRT_4] [datetime] NOT NULL,
[WORKSTRT_5] [datetime] NOT NULL,
[WORKSTRT_6] [datetime] NOT NULL,
[WORKSTRT_7] [datetime] NOT NULL,
[WORKEND_1] [datetime] NOT NULL,
[WORKEND_2] [datetime] NOT NULL,
[WORKEND_3] [datetime] NOT NULL,
[WORKEND_4] [datetime] NOT NULL,
[WORKEND_5] [datetime] NOT NULL,
[WORKEND_6] [datetime] NOT NULL,
[WORKEND_7] [datetime] NOT NULL,
[DTEHIRE] [datetime] NOT NULL,
[DTETERM] [datetime] NOT NULL,
[TECHSTAT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCCODEB] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVRPassword] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVROptions] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IVRLoginDate] [datetime] NOT NULL,
[IVRPassDate] [datetime] NOT NULL,
[IVRAccess] [int] NOT NULL,
[IVRGreet] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_ItemSiteDelta] [tinyint] NOT NULL,
[SVC_LastCommDate] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKEN__0C66AE13] CHECK ((datepart(day,[WORKEND_1])=(1) AND datepart(month,[WORKEND_1])=(1) AND datepart(year,[WORKEND_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKEN__0D5AD24C] CHECK ((datepart(day,[WORKEND_2])=(1) AND datepart(month,[WORKEND_2])=(1) AND datepart(year,[WORKEND_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKEN__0E4EF685] CHECK ((datepart(day,[WORKEND_3])=(1) AND datepart(month,[WORKEND_3])=(1) AND datepart(year,[WORKEND_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKEN__0F431ABE] CHECK ((datepart(day,[WORKEND_4])=(1) AND datepart(month,[WORKEND_4])=(1) AND datepart(year,[WORKEND_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKEN__10373EF7] CHECK ((datepart(day,[WORKEND_5])=(1) AND datepart(month,[WORKEND_5])=(1) AND datepart(year,[WORKEND_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKEN__112B6330] CHECK ((datepart(day,[WORKEND_6])=(1) AND datepart(month,[WORKEND_6])=(1) AND datepart(year,[WORKEND_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKEN__121F8769] CHECK ((datepart(day,[WORKEND_7])=(1) AND datepart(month,[WORKEND_7])=(1) AND datepart(year,[WORKEND_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKST__1313ABA2] CHECK ((datepart(day,[WORKSTRT_1])=(1) AND datepart(month,[WORKSTRT_1])=(1) AND datepart(year,[WORKSTRT_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKST__1407CFDB] CHECK ((datepart(day,[WORKSTRT_2])=(1) AND datepart(month,[WORKSTRT_2])=(1) AND datepart(year,[WORKSTRT_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKST__14FBF414] CHECK ((datepart(day,[WORKSTRT_3])=(1) AND datepart(month,[WORKSTRT_3])=(1) AND datepart(year,[WORKSTRT_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKST__15F0184D] CHECK ((datepart(day,[WORKSTRT_4])=(1) AND datepart(month,[WORKSTRT_4])=(1) AND datepart(year,[WORKSTRT_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKST__16E43C86] CHECK ((datepart(day,[WORKSTRT_5])=(1) AND datepart(month,[WORKSTRT_5])=(1) AND datepart(year,[WORKSTRT_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKST__17D860BF] CHECK ((datepart(day,[WORKSTRT_6])=(1) AND datepart(month,[WORKSTRT_6])=(1) AND datepart(year,[WORKSTRT_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__WORKST__18CC84F8] CHECK ((datepart(day,[WORKSTRT_7])=(1) AND datepart(month,[WORKSTRT_7])=(1) AND datepart(year,[WORKSTRT_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__DTEHIR__07A1F8F6] CHECK ((datepart(hour,[DTEHIRE])=(0) AND datepart(minute,[DTEHIRE])=(0) AND datepart(second,[DTEHIRE])=(0) AND datepart(millisecond,[DTEHIRE])=(0)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__DTETER__08961D2F] CHECK ((datepart(hour,[DTETERM])=(0) AND datepart(minute,[DTETERM])=(0) AND datepart(second,[DTETERM])=(0) AND datepart(millisecond,[DTETERM])=(0)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__IVRLog__098A4168] CHECK ((datepart(hour,[IVRLoginDate])=(0) AND datepart(minute,[IVRLoginDate])=(0) AND datepart(second,[IVRLoginDate])=(0) AND datepart(millisecond,[IVRLoginDate])=(0)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__IVRPas__0A7E65A1] CHECK ((datepart(hour,[IVRPassDate])=(0) AND datepart(minute,[IVRPassDate])=(0) AND datepart(second,[IVRPassDate])=(0) AND datepart(millisecond,[IVRPassDate])=(0)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [CK__SVC00100__SVC_La__0B7289DA] CHECK ((datepart(hour,[SVC_LastCommDate])=(0) AND datepart(minute,[SVC_LastCommDate])=(0) AND datepart(second,[SVC_LastCommDate])=(0) AND datepart(millisecond,[SVC_LastCommDate])=(0)))
GO
ALTER TABLE [dbo].[SVC00100] ADD CONSTRAINT [PKSVC00100] PRIMARY KEY CLUSTERED  ([TECHID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00100] ON [dbo].[SVC00100] ([NAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00100] ON [dbo].[SVC00100] ([OFFID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[MANAGER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[PAGER1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[PIN1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[PAGER2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[PIN2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[TECHEMAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[TECHEMAIL2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[WORKDYS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[WORKDYS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[WORKDYS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[WORKDYS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[WORKDYS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[WORKDYS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[WORKDYS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKSTRT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKSTRT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKSTRT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKSTRT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKSTRT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKSTRT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKSTRT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKEND_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKEND_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKEND_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKEND_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKEND_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKEND_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[WORKEND_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[DTEHIRE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[DTETERM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[TECHSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[LOCCODEB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[IVRPassword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[IVROptions]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[IVRLoginDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[IVRPassDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[IVRAccess]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[IVRGreet]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00100].[SVC_ItemSiteDelta]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00100].[SVC_LastCommDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00100].[EMPLOYID]'
GO
GRANT SELECT ON  [dbo].[SVC00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00100] TO [DYNGRP]
GO
