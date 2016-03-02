CREATE TABLE [dbo].[SVC30681]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Version] [smallint] NOT NULL,
[svcCoveragePeriodStart2_1] [datetime] NOT NULL,
[svcCoveragePeriodStart2_2] [datetime] NOT NULL,
[svcCoveragePeriodStart2_3] [datetime] NOT NULL,
[svcCoveragePeriodStart2_4] [datetime] NOT NULL,
[svcCoveragePeriodStart2_5] [datetime] NOT NULL,
[svcCoveragePeriodStart2_6] [datetime] NOT NULL,
[svcCoveragePeriodStart2_7] [datetime] NOT NULL,
[svcCoveragePeriodEnd2_1] [datetime] NOT NULL,
[svcCoveragePeriodEnd2_2] [datetime] NOT NULL,
[svcCoveragePeriodEnd2_3] [datetime] NOT NULL,
[svcCoveragePeriodEnd2_4] [datetime] NOT NULL,
[svcCoveragePeriodEnd2_5] [datetime] NOT NULL,
[svcCoveragePeriodEnd2_6] [datetime] NOT NULL,
[svcCoveragePeriodEnd2_7] [datetime] NOT NULL,
[svcCoveragePeriodStart3_1] [datetime] NOT NULL,
[svcCoveragePeriodStart3_2] [datetime] NOT NULL,
[svcCoveragePeriodStart3_3] [datetime] NOT NULL,
[svcCoveragePeriodStart3_4] [datetime] NOT NULL,
[svcCoveragePeriodStart3_5] [datetime] NOT NULL,
[svcCoveragePeriodStart3_6] [datetime] NOT NULL,
[svcCoveragePeriodStart3_7] [datetime] NOT NULL,
[svcCoveragePeriodEnd3_1] [datetime] NOT NULL,
[svcCoveragePeriodEnd3_2] [datetime] NOT NULL,
[svcCoveragePeriodEnd3_3] [datetime] NOT NULL,
[svcCoveragePeriodEnd3_4] [datetime] NOT NULL,
[svcCoveragePeriodEnd3_5] [datetime] NOT NULL,
[svcCoveragePeriodEnd3_6] [datetime] NOT NULL,
[svcCoveragePeriodEnd3_7] [datetime] NOT NULL,
[svcCoveragePeriodStart4_1] [datetime] NOT NULL,
[svcCoveragePeriodStart4_2] [datetime] NOT NULL,
[svcCoveragePeriodStart4_3] [datetime] NOT NULL,
[svcCoveragePeriodStart4_4] [datetime] NOT NULL,
[svcCoveragePeriodStart4_5] [datetime] NOT NULL,
[svcCoveragePeriodStart4_6] [datetime] NOT NULL,
[svcCoveragePeriodStart4_7] [datetime] NOT NULL,
[svcCoveragePeriodEnd4_1] [datetime] NOT NULL,
[svcCoveragePeriodEnd4_2] [datetime] NOT NULL,
[svcCoveragePeriodEnd4_3] [datetime] NOT NULL,
[svcCoveragePeriodEnd4_4] [datetime] NOT NULL,
[svcCoveragePeriodEnd4_5] [datetime] NOT NULL,
[svcCoveragePeriodEnd4_6] [datetime] NOT NULL,
[svcCoveragePeriodEnd4_7] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__06B8C1B5] CHECK ((datepart(day,[svcCoveragePeriodEnd2_1])=(1) AND datepart(month,[svcCoveragePeriodEnd2_1])=(1) AND datepart(year,[svcCoveragePeriodEnd2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__07ACE5EE] CHECK ((datepart(day,[svcCoveragePeriodEnd2_2])=(1) AND datepart(month,[svcCoveragePeriodEnd2_2])=(1) AND datepart(year,[svcCoveragePeriodEnd2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__08A10A27] CHECK ((datepart(day,[svcCoveragePeriodEnd2_3])=(1) AND datepart(month,[svcCoveragePeriodEnd2_3])=(1) AND datepart(year,[svcCoveragePeriodEnd2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__09952E60] CHECK ((datepart(day,[svcCoveragePeriodEnd2_4])=(1) AND datepart(month,[svcCoveragePeriodEnd2_4])=(1) AND datepart(year,[svcCoveragePeriodEnd2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__0A895299] CHECK ((datepart(day,[svcCoveragePeriodEnd2_5])=(1) AND datepart(month,[svcCoveragePeriodEnd2_5])=(1) AND datepart(year,[svcCoveragePeriodEnd2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__0B7D76D2] CHECK ((datepart(day,[svcCoveragePeriodEnd2_6])=(1) AND datepart(month,[svcCoveragePeriodEnd2_6])=(1) AND datepart(year,[svcCoveragePeriodEnd2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__0C719B0B] CHECK ((datepart(day,[svcCoveragePeriodEnd2_7])=(1) AND datepart(month,[svcCoveragePeriodEnd2_7])=(1) AND datepart(year,[svcCoveragePeriodEnd2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1412BCD3] CHECK ((datepart(day,[svcCoveragePeriodEnd3_1])=(1) AND datepart(month,[svcCoveragePeriodEnd3_1])=(1) AND datepart(year,[svcCoveragePeriodEnd3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1506E10C] CHECK ((datepart(day,[svcCoveragePeriodEnd3_2])=(1) AND datepart(month,[svcCoveragePeriodEnd3_2])=(1) AND datepart(year,[svcCoveragePeriodEnd3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__15FB0545] CHECK ((datepart(day,[svcCoveragePeriodEnd3_3])=(1) AND datepart(month,[svcCoveragePeriodEnd3_3])=(1) AND datepart(year,[svcCoveragePeriodEnd3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__16EF297E] CHECK ((datepart(day,[svcCoveragePeriodEnd3_4])=(1) AND datepart(month,[svcCoveragePeriodEnd3_4])=(1) AND datepart(year,[svcCoveragePeriodEnd3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__17E34DB7] CHECK ((datepart(day,[svcCoveragePeriodEnd3_5])=(1) AND datepart(month,[svcCoveragePeriodEnd3_5])=(1) AND datepart(year,[svcCoveragePeriodEnd3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__18D771F0] CHECK ((datepart(day,[svcCoveragePeriodEnd3_6])=(1) AND datepart(month,[svcCoveragePeriodEnd3_6])=(1) AND datepart(year,[svcCoveragePeriodEnd3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__19CB9629] CHECK ((datepart(day,[svcCoveragePeriodEnd3_7])=(1) AND datepart(month,[svcCoveragePeriodEnd3_7])=(1) AND datepart(year,[svcCoveragePeriodEnd3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__216CB7F1] CHECK ((datepart(day,[svcCoveragePeriodEnd4_1])=(1) AND datepart(month,[svcCoveragePeriodEnd4_1])=(1) AND datepart(year,[svcCoveragePeriodEnd4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__2260DC2A] CHECK ((datepart(day,[svcCoveragePeriodEnd4_2])=(1) AND datepart(month,[svcCoveragePeriodEnd4_2])=(1) AND datepart(year,[svcCoveragePeriodEnd4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__23550063] CHECK ((datepart(day,[svcCoveragePeriodEnd4_3])=(1) AND datepart(month,[svcCoveragePeriodEnd4_3])=(1) AND datepart(year,[svcCoveragePeriodEnd4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__2449249C] CHECK ((datepart(day,[svcCoveragePeriodEnd4_4])=(1) AND datepart(month,[svcCoveragePeriodEnd4_4])=(1) AND datepart(year,[svcCoveragePeriodEnd4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__253D48D5] CHECK ((datepart(day,[svcCoveragePeriodEnd4_5])=(1) AND datepart(month,[svcCoveragePeriodEnd4_5])=(1) AND datepart(year,[svcCoveragePeriodEnd4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__26316D0E] CHECK ((datepart(day,[svcCoveragePeriodEnd4_6])=(1) AND datepart(month,[svcCoveragePeriodEnd4_6])=(1) AND datepart(year,[svcCoveragePeriodEnd4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__27259147] CHECK ((datepart(day,[svcCoveragePeriodEnd4_7])=(1) AND datepart(month,[svcCoveragePeriodEnd4_7])=(1) AND datepart(year,[svcCoveragePeriodEnd4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__000BC426] CHECK ((datepart(day,[svcCoveragePeriodStart2_1])=(1) AND datepart(month,[svcCoveragePeriodStart2_1])=(1) AND datepart(year,[svcCoveragePeriodStart2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__00FFE85F] CHECK ((datepart(day,[svcCoveragePeriodStart2_2])=(1) AND datepart(month,[svcCoveragePeriodStart2_2])=(1) AND datepart(year,[svcCoveragePeriodStart2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__01F40C98] CHECK ((datepart(day,[svcCoveragePeriodStart2_3])=(1) AND datepart(month,[svcCoveragePeriodStart2_3])=(1) AND datepart(year,[svcCoveragePeriodStart2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__02E830D1] CHECK ((datepart(day,[svcCoveragePeriodStart2_4])=(1) AND datepart(month,[svcCoveragePeriodStart2_4])=(1) AND datepart(year,[svcCoveragePeriodStart2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__03DC550A] CHECK ((datepart(day,[svcCoveragePeriodStart2_5])=(1) AND datepart(month,[svcCoveragePeriodStart2_5])=(1) AND datepart(year,[svcCoveragePeriodStart2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__04D07943] CHECK ((datepart(day,[svcCoveragePeriodStart2_6])=(1) AND datepart(month,[svcCoveragePeriodStart2_6])=(1) AND datepart(year,[svcCoveragePeriodStart2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__05C49D7C] CHECK ((datepart(day,[svcCoveragePeriodStart2_7])=(1) AND datepart(month,[svcCoveragePeriodStart2_7])=(1) AND datepart(year,[svcCoveragePeriodStart2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__0D65BF44] CHECK ((datepart(day,[svcCoveragePeriodStart3_1])=(1) AND datepart(month,[svcCoveragePeriodStart3_1])=(1) AND datepart(year,[svcCoveragePeriodStart3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__0E59E37D] CHECK ((datepart(day,[svcCoveragePeriodStart3_2])=(1) AND datepart(month,[svcCoveragePeriodStart3_2])=(1) AND datepart(year,[svcCoveragePeriodStart3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__0F4E07B6] CHECK ((datepart(day,[svcCoveragePeriodStart3_3])=(1) AND datepart(month,[svcCoveragePeriodStart3_3])=(1) AND datepart(year,[svcCoveragePeriodStart3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__10422BEF] CHECK ((datepart(day,[svcCoveragePeriodStart3_4])=(1) AND datepart(month,[svcCoveragePeriodStart3_4])=(1) AND datepart(year,[svcCoveragePeriodStart3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__11365028] CHECK ((datepart(day,[svcCoveragePeriodStart3_5])=(1) AND datepart(month,[svcCoveragePeriodStart3_5])=(1) AND datepart(year,[svcCoveragePeriodStart3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__122A7461] CHECK ((datepart(day,[svcCoveragePeriodStart3_6])=(1) AND datepart(month,[svcCoveragePeriodStart3_6])=(1) AND datepart(year,[svcCoveragePeriodStart3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__131E989A] CHECK ((datepart(day,[svcCoveragePeriodStart3_7])=(1) AND datepart(month,[svcCoveragePeriodStart3_7])=(1) AND datepart(year,[svcCoveragePeriodStart3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1ABFBA62] CHECK ((datepart(day,[svcCoveragePeriodStart4_1])=(1) AND datepart(month,[svcCoveragePeriodStart4_1])=(1) AND datepart(year,[svcCoveragePeriodStart4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1BB3DE9B] CHECK ((datepart(day,[svcCoveragePeriodStart4_2])=(1) AND datepart(month,[svcCoveragePeriodStart4_2])=(1) AND datepart(year,[svcCoveragePeriodStart4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1CA802D4] CHECK ((datepart(day,[svcCoveragePeriodStart4_3])=(1) AND datepart(month,[svcCoveragePeriodStart4_3])=(1) AND datepart(year,[svcCoveragePeriodStart4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1D9C270D] CHECK ((datepart(day,[svcCoveragePeriodStart4_4])=(1) AND datepart(month,[svcCoveragePeriodStart4_4])=(1) AND datepart(year,[svcCoveragePeriodStart4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1E904B46] CHECK ((datepart(day,[svcCoveragePeriodStart4_5])=(1) AND datepart(month,[svcCoveragePeriodStart4_5])=(1) AND datepart(year,[svcCoveragePeriodStart4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__1F846F7F] CHECK ((datepart(day,[svcCoveragePeriodStart4_6])=(1) AND datepart(month,[svcCoveragePeriodStart4_6])=(1) AND datepart(year,[svcCoveragePeriodStart4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [CK__SVC30681__svcCov__207893B8] CHECK ((datepart(day,[svcCoveragePeriodStart4_7])=(1) AND datepart(month,[svcCoveragePeriodStart4_7])=(1) AND datepart(year,[svcCoveragePeriodStart4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30681] ADD CONSTRAINT [PKSVC30681] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30681].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30681].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30681].[SVC_Contract_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodStart4_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30681].[svcCoveragePeriodEnd4_7]'
GO
GRANT SELECT ON  [dbo].[SVC30681] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30681] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30681] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30681] TO [DYNGRP]
GO
