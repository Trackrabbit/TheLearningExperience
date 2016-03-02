CREATE TABLE [dbo].[SVC00902]
(
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHEMAIL] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MANAGER] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCCODBK] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[Return_Location_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKEN__42E2BA55] CHECK ((datepart(day,[WORKEND_1])=(1) AND datepart(month,[WORKEND_1])=(1) AND datepart(year,[WORKEND_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKEN__43D6DE8E] CHECK ((datepart(day,[WORKEND_2])=(1) AND datepart(month,[WORKEND_2])=(1) AND datepart(year,[WORKEND_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKEN__44CB02C7] CHECK ((datepart(day,[WORKEND_3])=(1) AND datepart(month,[WORKEND_3])=(1) AND datepart(year,[WORKEND_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKEN__45BF2700] CHECK ((datepart(day,[WORKEND_4])=(1) AND datepart(month,[WORKEND_4])=(1) AND datepart(year,[WORKEND_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKEN__46B34B39] CHECK ((datepart(day,[WORKEND_5])=(1) AND datepart(month,[WORKEND_5])=(1) AND datepart(year,[WORKEND_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKEN__47A76F72] CHECK ((datepart(day,[WORKEND_6])=(1) AND datepart(month,[WORKEND_6])=(1) AND datepart(year,[WORKEND_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKEN__489B93AB] CHECK ((datepart(day,[WORKEND_7])=(1) AND datepart(month,[WORKEND_7])=(1) AND datepart(year,[WORKEND_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKST__498FB7E4] CHECK ((datepart(day,[WORKSTRT_1])=(1) AND datepart(month,[WORKSTRT_1])=(1) AND datepart(year,[WORKSTRT_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKST__4A83DC1D] CHECK ((datepart(day,[WORKSTRT_2])=(1) AND datepart(month,[WORKSTRT_2])=(1) AND datepart(year,[WORKSTRT_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKST__4B780056] CHECK ((datepart(day,[WORKSTRT_3])=(1) AND datepart(month,[WORKSTRT_3])=(1) AND datepart(year,[WORKSTRT_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKST__4C6C248F] CHECK ((datepart(day,[WORKSTRT_4])=(1) AND datepart(month,[WORKSTRT_4])=(1) AND datepart(year,[WORKSTRT_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKST__4D6048C8] CHECK ((datepart(day,[WORKSTRT_5])=(1) AND datepart(month,[WORKSTRT_5])=(1) AND datepart(year,[WORKSTRT_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKST__4E546D01] CHECK ((datepart(day,[WORKSTRT_6])=(1) AND datepart(month,[WORKSTRT_6])=(1) AND datepart(year,[WORKSTRT_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [CK__SVC00902__WORKST__4F48913A] CHECK ((datepart(day,[WORKSTRT_7])=(1) AND datepart(month,[WORKSTRT_7])=(1) AND datepart(year,[WORKSTRT_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00902] ADD CONSTRAINT [PKSVC00902] PRIMARY KEY CLUSTERED  ([OFFID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00902] ON [dbo].[SVC00902] ([OFFNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[OFFNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[TECHEMAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[MANAGER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[LOCCODBK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00902].[WORKDYS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00902].[WORKDYS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00902].[WORKDYS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00902].[WORKDYS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00902].[WORKDYS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00902].[WORKDYS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00902].[WORKDYS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKSTRT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKSTRT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKSTRT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKSTRT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKSTRT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKSTRT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKSTRT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKEND_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKEND_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKEND_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKEND_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKEND_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKEND_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00902].[WORKEND_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[Return_Location_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00902].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00902].[ADDRESS3]'
GO
GRANT SELECT ON  [dbo].[SVC00902] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00902] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00902] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00902] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SVC00902] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[SVC00902] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[SVC00902] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SVC00902] TO [rpt_sales manager]
GO
