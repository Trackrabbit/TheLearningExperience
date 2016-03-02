CREATE TABLE [dbo].[SVC00681]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2C345F27] CHECK ((datepart(day,[svcCoveragePeriodEnd2_1])=(1) AND datepart(month,[svcCoveragePeriodEnd2_1])=(1) AND datepart(year,[svcCoveragePeriodEnd2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2D288360] CHECK ((datepart(day,[svcCoveragePeriodEnd2_2])=(1) AND datepart(month,[svcCoveragePeriodEnd2_2])=(1) AND datepart(year,[svcCoveragePeriodEnd2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2E1CA799] CHECK ((datepart(day,[svcCoveragePeriodEnd2_3])=(1) AND datepart(month,[svcCoveragePeriodEnd2_3])=(1) AND datepart(year,[svcCoveragePeriodEnd2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2F10CBD2] CHECK ((datepart(day,[svcCoveragePeriodEnd2_4])=(1) AND datepart(month,[svcCoveragePeriodEnd2_4])=(1) AND datepart(year,[svcCoveragePeriodEnd2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__3004F00B] CHECK ((datepart(day,[svcCoveragePeriodEnd2_5])=(1) AND datepart(month,[svcCoveragePeriodEnd2_5])=(1) AND datepart(year,[svcCoveragePeriodEnd2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__30F91444] CHECK ((datepart(day,[svcCoveragePeriodEnd2_6])=(1) AND datepart(month,[svcCoveragePeriodEnd2_6])=(1) AND datepart(year,[svcCoveragePeriodEnd2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__31ED387D] CHECK ((datepart(day,[svcCoveragePeriodEnd2_7])=(1) AND datepart(month,[svcCoveragePeriodEnd2_7])=(1) AND datepart(year,[svcCoveragePeriodEnd2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__398E5A45] CHECK ((datepart(day,[svcCoveragePeriodEnd3_1])=(1) AND datepart(month,[svcCoveragePeriodEnd3_1])=(1) AND datepart(year,[svcCoveragePeriodEnd3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__3A827E7E] CHECK ((datepart(day,[svcCoveragePeriodEnd3_2])=(1) AND datepart(month,[svcCoveragePeriodEnd3_2])=(1) AND datepart(year,[svcCoveragePeriodEnd3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__3B76A2B7] CHECK ((datepart(day,[svcCoveragePeriodEnd3_3])=(1) AND datepart(month,[svcCoveragePeriodEnd3_3])=(1) AND datepart(year,[svcCoveragePeriodEnd3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__3C6AC6F0] CHECK ((datepart(day,[svcCoveragePeriodEnd3_4])=(1) AND datepart(month,[svcCoveragePeriodEnd3_4])=(1) AND datepart(year,[svcCoveragePeriodEnd3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__3D5EEB29] CHECK ((datepart(day,[svcCoveragePeriodEnd3_5])=(1) AND datepart(month,[svcCoveragePeriodEnd3_5])=(1) AND datepart(year,[svcCoveragePeriodEnd3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__3E530F62] CHECK ((datepart(day,[svcCoveragePeriodEnd3_6])=(1) AND datepart(month,[svcCoveragePeriodEnd3_6])=(1) AND datepart(year,[svcCoveragePeriodEnd3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__3F47339B] CHECK ((datepart(day,[svcCoveragePeriodEnd3_7])=(1) AND datepart(month,[svcCoveragePeriodEnd3_7])=(1) AND datepart(year,[svcCoveragePeriodEnd3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__46E85563] CHECK ((datepart(day,[svcCoveragePeriodEnd4_1])=(1) AND datepart(month,[svcCoveragePeriodEnd4_1])=(1) AND datepart(year,[svcCoveragePeriodEnd4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__47DC799C] CHECK ((datepart(day,[svcCoveragePeriodEnd4_2])=(1) AND datepart(month,[svcCoveragePeriodEnd4_2])=(1) AND datepart(year,[svcCoveragePeriodEnd4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__48D09DD5] CHECK ((datepart(day,[svcCoveragePeriodEnd4_3])=(1) AND datepart(month,[svcCoveragePeriodEnd4_3])=(1) AND datepart(year,[svcCoveragePeriodEnd4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__49C4C20E] CHECK ((datepart(day,[svcCoveragePeriodEnd4_4])=(1) AND datepart(month,[svcCoveragePeriodEnd4_4])=(1) AND datepart(year,[svcCoveragePeriodEnd4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__4AB8E647] CHECK ((datepart(day,[svcCoveragePeriodEnd4_5])=(1) AND datepart(month,[svcCoveragePeriodEnd4_5])=(1) AND datepart(year,[svcCoveragePeriodEnd4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__239F1926] CHECK ((datepart(day,[svcCoveragePeriodEnd4_6])=(1) AND datepart(month,[svcCoveragePeriodEnd4_6])=(1) AND datepart(year,[svcCoveragePeriodEnd4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__24933D5F] CHECK ((datepart(day,[svcCoveragePeriodEnd4_7])=(1) AND datepart(month,[svcCoveragePeriodEnd4_7])=(1) AND datepart(year,[svcCoveragePeriodEnd4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__25876198] CHECK ((datepart(day,[svcCoveragePeriodStart2_1])=(1) AND datepart(month,[svcCoveragePeriodStart2_1])=(1) AND datepart(year,[svcCoveragePeriodStart2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__267B85D1] CHECK ((datepart(day,[svcCoveragePeriodStart2_2])=(1) AND datepart(month,[svcCoveragePeriodStart2_2])=(1) AND datepart(year,[svcCoveragePeriodStart2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__276FAA0A] CHECK ((datepart(day,[svcCoveragePeriodStart2_3])=(1) AND datepart(month,[svcCoveragePeriodStart2_3])=(1) AND datepart(year,[svcCoveragePeriodStart2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2863CE43] CHECK ((datepart(day,[svcCoveragePeriodStart2_4])=(1) AND datepart(month,[svcCoveragePeriodStart2_4])=(1) AND datepart(year,[svcCoveragePeriodStart2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2957F27C] CHECK ((datepart(day,[svcCoveragePeriodStart2_5])=(1) AND datepart(month,[svcCoveragePeriodStart2_5])=(1) AND datepart(year,[svcCoveragePeriodStart2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2A4C16B5] CHECK ((datepart(day,[svcCoveragePeriodStart2_6])=(1) AND datepart(month,[svcCoveragePeriodStart2_6])=(1) AND datepart(year,[svcCoveragePeriodStart2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__2B403AEE] CHECK ((datepart(day,[svcCoveragePeriodStart2_7])=(1) AND datepart(month,[svcCoveragePeriodStart2_7])=(1) AND datepart(year,[svcCoveragePeriodStart2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__32E15CB6] CHECK ((datepart(day,[svcCoveragePeriodStart3_1])=(1) AND datepart(month,[svcCoveragePeriodStart3_1])=(1) AND datepart(year,[svcCoveragePeriodStart3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__33D580EF] CHECK ((datepart(day,[svcCoveragePeriodStart3_2])=(1) AND datepart(month,[svcCoveragePeriodStart3_2])=(1) AND datepart(year,[svcCoveragePeriodStart3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__34C9A528] CHECK ((datepart(day,[svcCoveragePeriodStart3_3])=(1) AND datepart(month,[svcCoveragePeriodStart3_3])=(1) AND datepart(year,[svcCoveragePeriodStart3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__35BDC961] CHECK ((datepart(day,[svcCoveragePeriodStart3_4])=(1) AND datepart(month,[svcCoveragePeriodStart3_4])=(1) AND datepart(year,[svcCoveragePeriodStart3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__36B1ED9A] CHECK ((datepart(day,[svcCoveragePeriodStart3_5])=(1) AND datepart(month,[svcCoveragePeriodStart3_5])=(1) AND datepart(year,[svcCoveragePeriodStart3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__37A611D3] CHECK ((datepart(day,[svcCoveragePeriodStart3_6])=(1) AND datepart(month,[svcCoveragePeriodStart3_6])=(1) AND datepart(year,[svcCoveragePeriodStart3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__389A360C] CHECK ((datepart(day,[svcCoveragePeriodStart3_7])=(1) AND datepart(month,[svcCoveragePeriodStart3_7])=(1) AND datepart(year,[svcCoveragePeriodStart3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__403B57D4] CHECK ((datepart(day,[svcCoveragePeriodStart4_1])=(1) AND datepart(month,[svcCoveragePeriodStart4_1])=(1) AND datepart(year,[svcCoveragePeriodStart4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__412F7C0D] CHECK ((datepart(day,[svcCoveragePeriodStart4_2])=(1) AND datepart(month,[svcCoveragePeriodStart4_2])=(1) AND datepart(year,[svcCoveragePeriodStart4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__4223A046] CHECK ((datepart(day,[svcCoveragePeriodStart4_3])=(1) AND datepart(month,[svcCoveragePeriodStart4_3])=(1) AND datepart(year,[svcCoveragePeriodStart4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__4317C47F] CHECK ((datepart(day,[svcCoveragePeriodStart4_4])=(1) AND datepart(month,[svcCoveragePeriodStart4_4])=(1) AND datepart(year,[svcCoveragePeriodStart4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__440BE8B8] CHECK ((datepart(day,[svcCoveragePeriodStart4_5])=(1) AND datepart(month,[svcCoveragePeriodStart4_5])=(1) AND datepart(year,[svcCoveragePeriodStart4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__45000CF1] CHECK ((datepart(day,[svcCoveragePeriodStart4_6])=(1) AND datepart(month,[svcCoveragePeriodStart4_6])=(1) AND datepart(year,[svcCoveragePeriodStart4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [CK__SVC00681__svcCov__45F4312A] CHECK ((datepart(day,[svcCoveragePeriodStart4_7])=(1) AND datepart(month,[svcCoveragePeriodStart4_7])=(1) AND datepart(year,[svcCoveragePeriodStart4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00681] ADD CONSTRAINT [PKSVC00681] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00681].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00681].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodStart4_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00681].[svcCoveragePeriodEnd4_7]'
GO
GRANT SELECT ON  [dbo].[SVC00681] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00681] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00681] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00681] TO [DYNGRP]
GO
