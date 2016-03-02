CREATE TABLE [dbo].[SVC00682]
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
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__54425081] CHECK ((datepart(day,[svcCoveragePeriodEnd2_1])=(1) AND datepart(month,[svcCoveragePeriodEnd2_1])=(1) AND datepart(year,[svcCoveragePeriodEnd2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__553674BA] CHECK ((datepart(day,[svcCoveragePeriodEnd2_2])=(1) AND datepart(month,[svcCoveragePeriodEnd2_2])=(1) AND datepart(year,[svcCoveragePeriodEnd2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__562A98F3] CHECK ((datepart(day,[svcCoveragePeriodEnd2_3])=(1) AND datepart(month,[svcCoveragePeriodEnd2_3])=(1) AND datepart(year,[svcCoveragePeriodEnd2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__571EBD2C] CHECK ((datepart(day,[svcCoveragePeriodEnd2_4])=(1) AND datepart(month,[svcCoveragePeriodEnd2_4])=(1) AND datepart(year,[svcCoveragePeriodEnd2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5812E165] CHECK ((datepart(day,[svcCoveragePeriodEnd2_5])=(1) AND datepart(month,[svcCoveragePeriodEnd2_5])=(1) AND datepart(year,[svcCoveragePeriodEnd2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5907059E] CHECK ((datepart(day,[svcCoveragePeriodEnd2_6])=(1) AND datepart(month,[svcCoveragePeriodEnd2_6])=(1) AND datepart(year,[svcCoveragePeriodEnd2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__59FB29D7] CHECK ((datepart(day,[svcCoveragePeriodEnd2_7])=(1) AND datepart(month,[svcCoveragePeriodEnd2_7])=(1) AND datepart(year,[svcCoveragePeriodEnd2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__619C4B9F] CHECK ((datepart(day,[svcCoveragePeriodEnd3_1])=(1) AND datepart(month,[svcCoveragePeriodEnd3_1])=(1) AND datepart(year,[svcCoveragePeriodEnd3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__62906FD8] CHECK ((datepart(day,[svcCoveragePeriodEnd3_2])=(1) AND datepart(month,[svcCoveragePeriodEnd3_2])=(1) AND datepart(year,[svcCoveragePeriodEnd3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__63849411] CHECK ((datepart(day,[svcCoveragePeriodEnd3_3])=(1) AND datepart(month,[svcCoveragePeriodEnd3_3])=(1) AND datepart(year,[svcCoveragePeriodEnd3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6478B84A] CHECK ((datepart(day,[svcCoveragePeriodEnd3_4])=(1) AND datepart(month,[svcCoveragePeriodEnd3_4])=(1) AND datepart(year,[svcCoveragePeriodEnd3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__656CDC83] CHECK ((datepart(day,[svcCoveragePeriodEnd3_5])=(1) AND datepart(month,[svcCoveragePeriodEnd3_5])=(1) AND datepart(year,[svcCoveragePeriodEnd3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__666100BC] CHECK ((datepart(day,[svcCoveragePeriodEnd3_6])=(1) AND datepart(month,[svcCoveragePeriodEnd3_6])=(1) AND datepart(year,[svcCoveragePeriodEnd3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__675524F5] CHECK ((datepart(day,[svcCoveragePeriodEnd3_7])=(1) AND datepart(month,[svcCoveragePeriodEnd3_7])=(1) AND datepart(year,[svcCoveragePeriodEnd3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6EF646BD] CHECK ((datepart(day,[svcCoveragePeriodEnd4_1])=(1) AND datepart(month,[svcCoveragePeriodEnd4_1])=(1) AND datepart(year,[svcCoveragePeriodEnd4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6FEA6AF6] CHECK ((datepart(day,[svcCoveragePeriodEnd4_2])=(1) AND datepart(month,[svcCoveragePeriodEnd4_2])=(1) AND datepart(year,[svcCoveragePeriodEnd4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__70DE8F2F] CHECK ((datepart(day,[svcCoveragePeriodEnd4_3])=(1) AND datepart(month,[svcCoveragePeriodEnd4_3])=(1) AND datepart(year,[svcCoveragePeriodEnd4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__71D2B368] CHECK ((datepart(day,[svcCoveragePeriodEnd4_4])=(1) AND datepart(month,[svcCoveragePeriodEnd4_4])=(1) AND datepart(year,[svcCoveragePeriodEnd4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__72C6D7A1] CHECK ((datepart(day,[svcCoveragePeriodEnd4_5])=(1) AND datepart(month,[svcCoveragePeriodEnd4_5])=(1) AND datepart(year,[svcCoveragePeriodEnd4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__73BAFBDA] CHECK ((datepart(day,[svcCoveragePeriodEnd4_6])=(1) AND datepart(month,[svcCoveragePeriodEnd4_6])=(1) AND datepart(year,[svcCoveragePeriodEnd4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__74AF2013] CHECK ((datepart(day,[svcCoveragePeriodEnd4_7])=(1) AND datepart(month,[svcCoveragePeriodEnd4_7])=(1) AND datepart(year,[svcCoveragePeriodEnd4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__4D9552F2] CHECK ((datepart(day,[svcCoveragePeriodStart2_1])=(1) AND datepart(month,[svcCoveragePeriodStart2_1])=(1) AND datepart(year,[svcCoveragePeriodStart2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__4E89772B] CHECK ((datepart(day,[svcCoveragePeriodStart2_2])=(1) AND datepart(month,[svcCoveragePeriodStart2_2])=(1) AND datepart(year,[svcCoveragePeriodStart2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__4F7D9B64] CHECK ((datepart(day,[svcCoveragePeriodStart2_3])=(1) AND datepart(month,[svcCoveragePeriodStart2_3])=(1) AND datepart(year,[svcCoveragePeriodStart2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5071BF9D] CHECK ((datepart(day,[svcCoveragePeriodStart2_4])=(1) AND datepart(month,[svcCoveragePeriodStart2_4])=(1) AND datepart(year,[svcCoveragePeriodStart2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5165E3D6] CHECK ((datepart(day,[svcCoveragePeriodStart2_5])=(1) AND datepart(month,[svcCoveragePeriodStart2_5])=(1) AND datepart(year,[svcCoveragePeriodStart2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__525A080F] CHECK ((datepart(day,[svcCoveragePeriodStart2_6])=(1) AND datepart(month,[svcCoveragePeriodStart2_6])=(1) AND datepart(year,[svcCoveragePeriodStart2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__534E2C48] CHECK ((datepart(day,[svcCoveragePeriodStart2_7])=(1) AND datepart(month,[svcCoveragePeriodStart2_7])=(1) AND datepart(year,[svcCoveragePeriodStart2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5AEF4E10] CHECK ((datepart(day,[svcCoveragePeriodStart3_1])=(1) AND datepart(month,[svcCoveragePeriodStart3_1])=(1) AND datepart(year,[svcCoveragePeriodStart3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5BE37249] CHECK ((datepart(day,[svcCoveragePeriodStart3_2])=(1) AND datepart(month,[svcCoveragePeriodStart3_2])=(1) AND datepart(year,[svcCoveragePeriodStart3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5CD79682] CHECK ((datepart(day,[svcCoveragePeriodStart3_3])=(1) AND datepart(month,[svcCoveragePeriodStart3_3])=(1) AND datepart(year,[svcCoveragePeriodStart3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5DCBBABB] CHECK ((datepart(day,[svcCoveragePeriodStart3_4])=(1) AND datepart(month,[svcCoveragePeriodStart3_4])=(1) AND datepart(year,[svcCoveragePeriodStart3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5EBFDEF4] CHECK ((datepart(day,[svcCoveragePeriodStart3_5])=(1) AND datepart(month,[svcCoveragePeriodStart3_5])=(1) AND datepart(year,[svcCoveragePeriodStart3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__5FB4032D] CHECK ((datepart(day,[svcCoveragePeriodStart3_6])=(1) AND datepart(month,[svcCoveragePeriodStart3_6])=(1) AND datepart(year,[svcCoveragePeriodStart3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__60A82766] CHECK ((datepart(day,[svcCoveragePeriodStart3_7])=(1) AND datepart(month,[svcCoveragePeriodStart3_7])=(1) AND datepart(year,[svcCoveragePeriodStart3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6849492E] CHECK ((datepart(day,[svcCoveragePeriodStart4_1])=(1) AND datepart(month,[svcCoveragePeriodStart4_1])=(1) AND datepart(year,[svcCoveragePeriodStart4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__693D6D67] CHECK ((datepart(day,[svcCoveragePeriodStart4_2])=(1) AND datepart(month,[svcCoveragePeriodStart4_2])=(1) AND datepart(year,[svcCoveragePeriodStart4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6A3191A0] CHECK ((datepart(day,[svcCoveragePeriodStart4_3])=(1) AND datepart(month,[svcCoveragePeriodStart4_3])=(1) AND datepart(year,[svcCoveragePeriodStart4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6B25B5D9] CHECK ((datepart(day,[svcCoveragePeriodStart4_4])=(1) AND datepart(month,[svcCoveragePeriodStart4_4])=(1) AND datepart(year,[svcCoveragePeriodStart4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6C19DA12] CHECK ((datepart(day,[svcCoveragePeriodStart4_5])=(1) AND datepart(month,[svcCoveragePeriodStart4_5])=(1) AND datepart(year,[svcCoveragePeriodStart4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6D0DFE4B] CHECK ((datepart(day,[svcCoveragePeriodStart4_6])=(1) AND datepart(month,[svcCoveragePeriodStart4_6])=(1) AND datepart(year,[svcCoveragePeriodStart4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [CK__SVC00682__svcCov__6E022284] CHECK ((datepart(day,[svcCoveragePeriodStart4_7])=(1) AND datepart(month,[svcCoveragePeriodStart4_7])=(1) AND datepart(year,[svcCoveragePeriodStart4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00682] ADD CONSTRAINT [PKSVC00682] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00682].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00682].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00682].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodStart4_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00682].[svcCoveragePeriodEnd4_7]'
GO
GRANT SELECT ON  [dbo].[SVC00682] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00682] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00682] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00682] TO [DYNGRP]
GO
