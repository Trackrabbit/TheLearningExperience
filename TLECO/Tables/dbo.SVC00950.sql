CREATE TABLE [dbo].[SVC00950]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[LSTSRVDTE] [datetime] NOT NULL,
[SVCAREA] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Address_Option] [smallint] NOT NULL,
[SVC_Misc_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_PM_Date] [smallint] NOT NULL,
[SVC_PM_Day] [smallint] NOT NULL,
[SVC_PM_Allowed] [tinyint] NOT NULL,
[SVC_Allow_Contract_0_SOP] [tinyint] NOT NULL,
[svcPreferredDay_1] [tinyint] NOT NULL,
[svcPreferredDay_2] [tinyint] NOT NULL,
[svcPreferredDay_3] [tinyint] NOT NULL,
[svcPreferredDay_4] [tinyint] NOT NULL,
[svcPreferredDay_5] [tinyint] NOT NULL,
[svcPreferredDay_6] [tinyint] NOT NULL,
[svcPreferredDay_7] [tinyint] NOT NULL,
[svcPreferredStartTime_1] [datetime] NOT NULL,
[svcPreferredStartTime_2] [datetime] NOT NULL,
[svcPreferredStartTime_3] [datetime] NOT NULL,
[svcPreferredStartTime_4] [datetime] NOT NULL,
[svcPreferredStartTime_5] [datetime] NOT NULL,
[svcPreferredStartTime_6] [datetime] NOT NULL,
[svcPreferredStartTime_7] [datetime] NOT NULL,
[svcPreferredEndTime_1] [datetime] NOT NULL,
[svcPreferredEndTime_2] [datetime] NOT NULL,
[svcPreferredEndTime_3] [datetime] NOT NULL,
[svcPreferredEndTime_4] [datetime] NOT NULL,
[svcPreferredEndTime_5] [datetime] NOT NULL,
[svcPreferredEndTime_6] [datetime] NOT NULL,
[svcPreferredEndTime_7] [datetime] NOT NULL,
[CNSOLDTD] [tinyint] NOT NULL,
[svcConsolidateContractIn] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[tr_SVC_SVC00950_I] ON [dbo].[SVC00950]  FOR INSERT AS declare @Opt smallint select @Opt = SVC_Address_Option from SVC00998 update SVC00950 set SVC00950.SVC_Address_Option = @Opt from inserted i where SVC00950.CUSTNMBR = i.CUSTNMBR and   SVC00950.ADRSCODE = i.ADRSCODE and   (i.SVC_Address_Option < 1 or i.SVC_Address_Option > 4)    
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__12FE9D09] CHECK ((datepart(day,[svcPreferredEndTime_1])=(1) AND datepart(month,[svcPreferredEndTime_1])=(1) AND datepart(year,[svcPreferredEndTime_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__13F2C142] CHECK ((datepart(day,[svcPreferredEndTime_2])=(1) AND datepart(month,[svcPreferredEndTime_2])=(1) AND datepart(year,[svcPreferredEndTime_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__14E6E57B] CHECK ((datepart(day,[svcPreferredEndTime_3])=(1) AND datepart(month,[svcPreferredEndTime_3])=(1) AND datepart(year,[svcPreferredEndTime_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__15DB09B4] CHECK ((datepart(day,[svcPreferredEndTime_4])=(1) AND datepart(month,[svcPreferredEndTime_4])=(1) AND datepart(year,[svcPreferredEndTime_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__16CF2DED] CHECK ((datepart(day,[svcPreferredEndTime_5])=(1) AND datepart(month,[svcPreferredEndTime_5])=(1) AND datepart(year,[svcPreferredEndTime_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__17C35226] CHECK ((datepart(day,[svcPreferredEndTime_6])=(1) AND datepart(month,[svcPreferredEndTime_6])=(1) AND datepart(year,[svcPreferredEndTime_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__18B7765F] CHECK ((datepart(day,[svcPreferredEndTime_7])=(1) AND datepart(month,[svcPreferredEndTime_7])=(1) AND datepart(year,[svcPreferredEndTime_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__0C519F7A] CHECK ((datepart(day,[svcPreferredStartTime_1])=(1) AND datepart(month,[svcPreferredStartTime_1])=(1) AND datepart(year,[svcPreferredStartTime_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__0D45C3B3] CHECK ((datepart(day,[svcPreferredStartTime_2])=(1) AND datepart(month,[svcPreferredStartTime_2])=(1) AND datepart(year,[svcPreferredStartTime_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__0E39E7EC] CHECK ((datepart(day,[svcPreferredStartTime_3])=(1) AND datepart(month,[svcPreferredStartTime_3])=(1) AND datepart(year,[svcPreferredStartTime_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__0F2E0C25] CHECK ((datepart(day,[svcPreferredStartTime_4])=(1) AND datepart(month,[svcPreferredStartTime_4])=(1) AND datepart(year,[svcPreferredStartTime_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__1022305E] CHECK ((datepart(day,[svcPreferredStartTime_5])=(1) AND datepart(month,[svcPreferredStartTime_5])=(1) AND datepart(year,[svcPreferredStartTime_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__11165497] CHECK ((datepart(day,[svcPreferredStartTime_6])=(1) AND datepart(month,[svcPreferredStartTime_6])=(1) AND datepart(year,[svcPreferredStartTime_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__svcPre__120A78D0] CHECK ((datepart(day,[svcPreferredStartTime_7])=(1) AND datepart(month,[svcPreferredStartTime_7])=(1) AND datepart(year,[svcPreferredStartTime_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKEN__7EF7A45C] CHECK ((datepart(day,[WORKEND_1])=(1) AND datepart(month,[WORKEND_1])=(1) AND datepart(year,[WORKEND_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKEN__7FEBC895] CHECK ((datepart(day,[WORKEND_2])=(1) AND datepart(month,[WORKEND_2])=(1) AND datepart(year,[WORKEND_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKEN__00DFECCE] CHECK ((datepart(day,[WORKEND_3])=(1) AND datepart(month,[WORKEND_3])=(1) AND datepart(year,[WORKEND_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKEN__01D41107] CHECK ((datepart(day,[WORKEND_4])=(1) AND datepart(month,[WORKEND_4])=(1) AND datepart(year,[WORKEND_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKEN__02C83540] CHECK ((datepart(day,[WORKEND_5])=(1) AND datepart(month,[WORKEND_5])=(1) AND datepart(year,[WORKEND_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKEN__03BC5979] CHECK ((datepart(day,[WORKEND_6])=(1) AND datepart(month,[WORKEND_6])=(1) AND datepart(year,[WORKEND_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKEN__04B07DB2] CHECK ((datepart(day,[WORKEND_7])=(1) AND datepart(month,[WORKEND_7])=(1) AND datepart(year,[WORKEND_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKST__05A4A1EB] CHECK ((datepart(day,[WORKSTRT_1])=(1) AND datepart(month,[WORKSTRT_1])=(1) AND datepart(year,[WORKSTRT_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKST__0698C624] CHECK ((datepart(day,[WORKSTRT_2])=(1) AND datepart(month,[WORKSTRT_2])=(1) AND datepart(year,[WORKSTRT_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKST__078CEA5D] CHECK ((datepart(day,[WORKSTRT_3])=(1) AND datepart(month,[WORKSTRT_3])=(1) AND datepart(year,[WORKSTRT_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKST__08810E96] CHECK ((datepart(day,[WORKSTRT_4])=(1) AND datepart(month,[WORKSTRT_4])=(1) AND datepart(year,[WORKSTRT_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKST__097532CF] CHECK ((datepart(day,[WORKSTRT_5])=(1) AND datepart(month,[WORKSTRT_5])=(1) AND datepart(year,[WORKSTRT_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKST__0A695708] CHECK ((datepart(day,[WORKSTRT_6])=(1) AND datepart(month,[WORKSTRT_6])=(1) AND datepart(year,[WORKSTRT_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__WORKST__0B5D7B41] CHECK ((datepart(day,[WORKSTRT_7])=(1) AND datepart(month,[WORKSTRT_7])=(1) AND datepart(year,[WORKSTRT_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [CK__SVC00950__LSTSRV__7E038023] CHECK ((datepart(hour,[LSTSRVDTE])=(0) AND datepart(minute,[LSTSRVDTE])=(0) AND datepart(second,[LSTSRVDTE])=(0) AND datepart(millisecond,[LSTSRVDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00950] ADD CONSTRAINT [PKSVC00950] PRIMARY KEY CLUSTERED  ([CUSTNMBR], [ADRSCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[WORKDYS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[WORKDYS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[WORKDYS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[WORKDYS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[WORKDYS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[WORKDYS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[WORKDYS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKSTRT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKSTRT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKSTRT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKSTRT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKSTRT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKSTRT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKSTRT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKEND_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKEND_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKEND_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKEND_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKEND_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKEND_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[WORKEND_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[LSTSRVDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[SVCAREA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[OFFID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[SVC_Address_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00950].[SVC_Misc_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[SVC_PM_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[SVC_PM_Day]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[SVC_PM_Allowed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[SVC_Allow_Contract_0_SOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcPreferredDay_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcPreferredDay_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcPreferredDay_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcPreferredDay_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcPreferredDay_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcPreferredDay_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcPreferredDay_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredStartTime_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredStartTime_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredStartTime_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredStartTime_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredStartTime_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredStartTime_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredStartTime_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredEndTime_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredEndTime_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredEndTime_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredEndTime_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredEndTime_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredEndTime_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00950].[svcPreferredEndTime_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[CNSOLDTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00950].[svcConsolidateContractIn]'
GO
GRANT SELECT ON  [dbo].[SVC00950] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00950] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00950] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00950] TO [DYNGRP]
GO
