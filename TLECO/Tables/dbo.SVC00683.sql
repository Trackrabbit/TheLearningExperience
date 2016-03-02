CREATE TABLE [dbo].[SVC00683]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
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
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__7E388A4D] CHECK ((datepart(day,[svcCoveragePeriodEnd2_1])=(1) AND datepart(month,[svcCoveragePeriodEnd2_1])=(1) AND datepart(year,[svcCoveragePeriodEnd2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__7F2CAE86] CHECK ((datepart(day,[svcCoveragePeriodEnd2_2])=(1) AND datepart(month,[svcCoveragePeriodEnd2_2])=(1) AND datepart(year,[svcCoveragePeriodEnd2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0020D2BF] CHECK ((datepart(day,[svcCoveragePeriodEnd2_3])=(1) AND datepart(month,[svcCoveragePeriodEnd2_3])=(1) AND datepart(year,[svcCoveragePeriodEnd2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0114F6F8] CHECK ((datepart(day,[svcCoveragePeriodEnd2_4])=(1) AND datepart(month,[svcCoveragePeriodEnd2_4])=(1) AND datepart(year,[svcCoveragePeriodEnd2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__02091B31] CHECK ((datepart(day,[svcCoveragePeriodEnd2_5])=(1) AND datepart(month,[svcCoveragePeriodEnd2_5])=(1) AND datepart(year,[svcCoveragePeriodEnd2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__02FD3F6A] CHECK ((datepart(day,[svcCoveragePeriodEnd2_6])=(1) AND datepart(month,[svcCoveragePeriodEnd2_6])=(1) AND datepart(year,[svcCoveragePeriodEnd2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__03F163A3] CHECK ((datepart(day,[svcCoveragePeriodEnd2_7])=(1) AND datepart(month,[svcCoveragePeriodEnd2_7])=(1) AND datepart(year,[svcCoveragePeriodEnd2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0B92856B] CHECK ((datepart(day,[svcCoveragePeriodEnd3_1])=(1) AND datepart(month,[svcCoveragePeriodEnd3_1])=(1) AND datepart(year,[svcCoveragePeriodEnd3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0C86A9A4] CHECK ((datepart(day,[svcCoveragePeriodEnd3_2])=(1) AND datepart(month,[svcCoveragePeriodEnd3_2])=(1) AND datepart(year,[svcCoveragePeriodEnd3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0D7ACDDD] CHECK ((datepart(day,[svcCoveragePeriodEnd3_3])=(1) AND datepart(month,[svcCoveragePeriodEnd3_3])=(1) AND datepart(year,[svcCoveragePeriodEnd3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0E6EF216] CHECK ((datepart(day,[svcCoveragePeriodEnd3_4])=(1) AND datepart(month,[svcCoveragePeriodEnd3_4])=(1) AND datepart(year,[svcCoveragePeriodEnd3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0F63164F] CHECK ((datepart(day,[svcCoveragePeriodEnd3_5])=(1) AND datepart(month,[svcCoveragePeriodEnd3_5])=(1) AND datepart(year,[svcCoveragePeriodEnd3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__10573A88] CHECK ((datepart(day,[svcCoveragePeriodEnd3_6])=(1) AND datepart(month,[svcCoveragePeriodEnd3_6])=(1) AND datepart(year,[svcCoveragePeriodEnd3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__114B5EC1] CHECK ((datepart(day,[svcCoveragePeriodEnd3_7])=(1) AND datepart(month,[svcCoveragePeriodEnd3_7])=(1) AND datepart(year,[svcCoveragePeriodEnd3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__18EC8089] CHECK ((datepart(day,[svcCoveragePeriodEnd4_1])=(1) AND datepart(month,[svcCoveragePeriodEnd4_1])=(1) AND datepart(year,[svcCoveragePeriodEnd4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__19E0A4C2] CHECK ((datepart(day,[svcCoveragePeriodEnd4_2])=(1) AND datepart(month,[svcCoveragePeriodEnd4_2])=(1) AND datepart(year,[svcCoveragePeriodEnd4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__1AD4C8FB] CHECK ((datepart(day,[svcCoveragePeriodEnd4_3])=(1) AND datepart(month,[svcCoveragePeriodEnd4_3])=(1) AND datepart(year,[svcCoveragePeriodEnd4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__1BC8ED34] CHECK ((datepart(day,[svcCoveragePeriodEnd4_4])=(1) AND datepart(month,[svcCoveragePeriodEnd4_4])=(1) AND datepart(year,[svcCoveragePeriodEnd4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__1CBD116D] CHECK ((datepart(day,[svcCoveragePeriodEnd4_5])=(1) AND datepart(month,[svcCoveragePeriodEnd4_5])=(1) AND datepart(year,[svcCoveragePeriodEnd4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__1DB135A6] CHECK ((datepart(day,[svcCoveragePeriodEnd4_6])=(1) AND datepart(month,[svcCoveragePeriodEnd4_6])=(1) AND datepart(year,[svcCoveragePeriodEnd4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__1EA559DF] CHECK ((datepart(day,[svcCoveragePeriodEnd4_7])=(1) AND datepart(month,[svcCoveragePeriodEnd4_7])=(1) AND datepart(year,[svcCoveragePeriodEnd4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__778B8CBE] CHECK ((datepart(day,[svcCoveragePeriodStart2_1])=(1) AND datepart(month,[svcCoveragePeriodStart2_1])=(1) AND datepart(year,[svcCoveragePeriodStart2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__787FB0F7] CHECK ((datepart(day,[svcCoveragePeriodStart2_2])=(1) AND datepart(month,[svcCoveragePeriodStart2_2])=(1) AND datepart(year,[svcCoveragePeriodStart2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__7973D530] CHECK ((datepart(day,[svcCoveragePeriodStart2_3])=(1) AND datepart(month,[svcCoveragePeriodStart2_3])=(1) AND datepart(year,[svcCoveragePeriodStart2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__7A67F969] CHECK ((datepart(day,[svcCoveragePeriodStart2_4])=(1) AND datepart(month,[svcCoveragePeriodStart2_4])=(1) AND datepart(year,[svcCoveragePeriodStart2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__7B5C1DA2] CHECK ((datepart(day,[svcCoveragePeriodStart2_5])=(1) AND datepart(month,[svcCoveragePeriodStart2_5])=(1) AND datepart(year,[svcCoveragePeriodStart2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__7C5041DB] CHECK ((datepart(day,[svcCoveragePeriodStart2_6])=(1) AND datepart(month,[svcCoveragePeriodStart2_6])=(1) AND datepart(year,[svcCoveragePeriodStart2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__7D446614] CHECK ((datepart(day,[svcCoveragePeriodStart2_7])=(1) AND datepart(month,[svcCoveragePeriodStart2_7])=(1) AND datepart(year,[svcCoveragePeriodStart2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__04E587DC] CHECK ((datepart(day,[svcCoveragePeriodStart3_1])=(1) AND datepart(month,[svcCoveragePeriodStart3_1])=(1) AND datepart(year,[svcCoveragePeriodStart3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__05D9AC15] CHECK ((datepart(day,[svcCoveragePeriodStart3_2])=(1) AND datepart(month,[svcCoveragePeriodStart3_2])=(1) AND datepart(year,[svcCoveragePeriodStart3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__06CDD04E] CHECK ((datepart(day,[svcCoveragePeriodStart3_3])=(1) AND datepart(month,[svcCoveragePeriodStart3_3])=(1) AND datepart(year,[svcCoveragePeriodStart3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__07C1F487] CHECK ((datepart(day,[svcCoveragePeriodStart3_4])=(1) AND datepart(month,[svcCoveragePeriodStart3_4])=(1) AND datepart(year,[svcCoveragePeriodStart3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__08B618C0] CHECK ((datepart(day,[svcCoveragePeriodStart3_5])=(1) AND datepart(month,[svcCoveragePeriodStart3_5])=(1) AND datepart(year,[svcCoveragePeriodStart3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__09AA3CF9] CHECK ((datepart(day,[svcCoveragePeriodStart3_6])=(1) AND datepart(month,[svcCoveragePeriodStart3_6])=(1) AND datepart(year,[svcCoveragePeriodStart3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__0A9E6132] CHECK ((datepart(day,[svcCoveragePeriodStart3_7])=(1) AND datepart(month,[svcCoveragePeriodStart3_7])=(1) AND datepart(year,[svcCoveragePeriodStart3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__123F82FA] CHECK ((datepart(day,[svcCoveragePeriodStart4_1])=(1) AND datepart(month,[svcCoveragePeriodStart4_1])=(1) AND datepart(year,[svcCoveragePeriodStart4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__1333A733] CHECK ((datepart(day,[svcCoveragePeriodStart4_2])=(1) AND datepart(month,[svcCoveragePeriodStart4_2])=(1) AND datepart(year,[svcCoveragePeriodStart4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__1427CB6C] CHECK ((datepart(day,[svcCoveragePeriodStart4_3])=(1) AND datepart(month,[svcCoveragePeriodStart4_3])=(1) AND datepart(year,[svcCoveragePeriodStart4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__151BEFA5] CHECK ((datepart(day,[svcCoveragePeriodStart4_4])=(1) AND datepart(month,[svcCoveragePeriodStart4_4])=(1) AND datepart(year,[svcCoveragePeriodStart4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__161013DE] CHECK ((datepart(day,[svcCoveragePeriodStart4_5])=(1) AND datepart(month,[svcCoveragePeriodStart4_5])=(1) AND datepart(year,[svcCoveragePeriodStart4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__17043817] CHECK ((datepart(day,[svcCoveragePeriodStart4_6])=(1) AND datepart(month,[svcCoveragePeriodStart4_6])=(1) AND datepart(year,[svcCoveragePeriodStart4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [CK__SVC00683__svcCov__17F85C50] CHECK ((datepart(day,[svcCoveragePeriodStart4_7])=(1) AND datepart(month,[svcCoveragePeriodStart4_7])=(1) AND datepart(year,[svcCoveragePeriodStart4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00683] ADD CONSTRAINT [PKSVC00683] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00683].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00683].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00683].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodStart4_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00683].[svcCoveragePeriodEnd4_7]'
GO
GRANT SELECT ON  [dbo].[SVC00683] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00683] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00683] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00683] TO [DYNGRP]
GO
