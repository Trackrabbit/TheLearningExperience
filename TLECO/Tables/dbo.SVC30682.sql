CREATE TABLE [dbo].[SVC30682]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Version] [smallint] NOT NULL,
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
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__30AEFB81] CHECK ((datepart(day,[svcCoveragePeriodEnd2_1])=(1) AND datepart(month,[svcCoveragePeriodEnd2_1])=(1) AND datepart(year,[svcCoveragePeriodEnd2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__31A31FBA] CHECK ((datepart(day,[svcCoveragePeriodEnd2_2])=(1) AND datepart(month,[svcCoveragePeriodEnd2_2])=(1) AND datepart(year,[svcCoveragePeriodEnd2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__329743F3] CHECK ((datepart(day,[svcCoveragePeriodEnd2_3])=(1) AND datepart(month,[svcCoveragePeriodEnd2_3])=(1) AND datepart(year,[svcCoveragePeriodEnd2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__338B682C] CHECK ((datepart(day,[svcCoveragePeriodEnd2_4])=(1) AND datepart(month,[svcCoveragePeriodEnd2_4])=(1) AND datepart(year,[svcCoveragePeriodEnd2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__347F8C65] CHECK ((datepart(day,[svcCoveragePeriodEnd2_5])=(1) AND datepart(month,[svcCoveragePeriodEnd2_5])=(1) AND datepart(year,[svcCoveragePeriodEnd2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3573B09E] CHECK ((datepart(day,[svcCoveragePeriodEnd2_6])=(1) AND datepart(month,[svcCoveragePeriodEnd2_6])=(1) AND datepart(year,[svcCoveragePeriodEnd2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3667D4D7] CHECK ((datepart(day,[svcCoveragePeriodEnd2_7])=(1) AND datepart(month,[svcCoveragePeriodEnd2_7])=(1) AND datepart(year,[svcCoveragePeriodEnd2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3E08F69F] CHECK ((datepart(day,[svcCoveragePeriodEnd3_1])=(1) AND datepart(month,[svcCoveragePeriodEnd3_1])=(1) AND datepart(year,[svcCoveragePeriodEnd3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3EFD1AD8] CHECK ((datepart(day,[svcCoveragePeriodEnd3_2])=(1) AND datepart(month,[svcCoveragePeriodEnd3_2])=(1) AND datepart(year,[svcCoveragePeriodEnd3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3FF13F11] CHECK ((datepart(day,[svcCoveragePeriodEnd3_3])=(1) AND datepart(month,[svcCoveragePeriodEnd3_3])=(1) AND datepart(year,[svcCoveragePeriodEnd3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__40E5634A] CHECK ((datepart(day,[svcCoveragePeriodEnd3_4])=(1) AND datepart(month,[svcCoveragePeriodEnd3_4])=(1) AND datepart(year,[svcCoveragePeriodEnd3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__41D98783] CHECK ((datepart(day,[svcCoveragePeriodEnd3_5])=(1) AND datepart(month,[svcCoveragePeriodEnd3_5])=(1) AND datepart(year,[svcCoveragePeriodEnd3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__42CDABBC] CHECK ((datepart(day,[svcCoveragePeriodEnd3_6])=(1) AND datepart(month,[svcCoveragePeriodEnd3_6])=(1) AND datepart(year,[svcCoveragePeriodEnd3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__43C1CFF5] CHECK ((datepart(day,[svcCoveragePeriodEnd3_7])=(1) AND datepart(month,[svcCoveragePeriodEnd3_7])=(1) AND datepart(year,[svcCoveragePeriodEnd3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__4B62F1BD] CHECK ((datepart(day,[svcCoveragePeriodEnd4_1])=(1) AND datepart(month,[svcCoveragePeriodEnd4_1])=(1) AND datepart(year,[svcCoveragePeriodEnd4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__4C5715F6] CHECK ((datepart(day,[svcCoveragePeriodEnd4_2])=(1) AND datepart(month,[svcCoveragePeriodEnd4_2])=(1) AND datepart(year,[svcCoveragePeriodEnd4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__4D4B3A2F] CHECK ((datepart(day,[svcCoveragePeriodEnd4_3])=(1) AND datepart(month,[svcCoveragePeriodEnd4_3])=(1) AND datepart(year,[svcCoveragePeriodEnd4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__4E3F5E68] CHECK ((datepart(day,[svcCoveragePeriodEnd4_4])=(1) AND datepart(month,[svcCoveragePeriodEnd4_4])=(1) AND datepart(year,[svcCoveragePeriodEnd4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__4F3382A1] CHECK ((datepart(day,[svcCoveragePeriodEnd4_5])=(1) AND datepart(month,[svcCoveragePeriodEnd4_5])=(1) AND datepart(year,[svcCoveragePeriodEnd4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__5027A6DA] CHECK ((datepart(day,[svcCoveragePeriodEnd4_6])=(1) AND datepart(month,[svcCoveragePeriodEnd4_6])=(1) AND datepart(year,[svcCoveragePeriodEnd4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__511BCB13] CHECK ((datepart(day,[svcCoveragePeriodEnd4_7])=(1) AND datepart(month,[svcCoveragePeriodEnd4_7])=(1) AND datepart(year,[svcCoveragePeriodEnd4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__2A01FDF2] CHECK ((datepart(day,[svcCoveragePeriodStart2_1])=(1) AND datepart(month,[svcCoveragePeriodStart2_1])=(1) AND datepart(year,[svcCoveragePeriodStart2_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__2AF6222B] CHECK ((datepart(day,[svcCoveragePeriodStart2_2])=(1) AND datepart(month,[svcCoveragePeriodStart2_2])=(1) AND datepart(year,[svcCoveragePeriodStart2_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__2BEA4664] CHECK ((datepart(day,[svcCoveragePeriodStart2_3])=(1) AND datepart(month,[svcCoveragePeriodStart2_3])=(1) AND datepart(year,[svcCoveragePeriodStart2_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__2CDE6A9D] CHECK ((datepart(day,[svcCoveragePeriodStart2_4])=(1) AND datepart(month,[svcCoveragePeriodStart2_4])=(1) AND datepart(year,[svcCoveragePeriodStart2_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__2DD28ED6] CHECK ((datepart(day,[svcCoveragePeriodStart2_5])=(1) AND datepart(month,[svcCoveragePeriodStart2_5])=(1) AND datepart(year,[svcCoveragePeriodStart2_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__2EC6B30F] CHECK ((datepart(day,[svcCoveragePeriodStart2_6])=(1) AND datepart(month,[svcCoveragePeriodStart2_6])=(1) AND datepart(year,[svcCoveragePeriodStart2_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__2FBAD748] CHECK ((datepart(day,[svcCoveragePeriodStart2_7])=(1) AND datepart(month,[svcCoveragePeriodStart2_7])=(1) AND datepart(year,[svcCoveragePeriodStart2_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__375BF910] CHECK ((datepart(day,[svcCoveragePeriodStart3_1])=(1) AND datepart(month,[svcCoveragePeriodStart3_1])=(1) AND datepart(year,[svcCoveragePeriodStart3_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__38501D49] CHECK ((datepart(day,[svcCoveragePeriodStart3_2])=(1) AND datepart(month,[svcCoveragePeriodStart3_2])=(1) AND datepart(year,[svcCoveragePeriodStart3_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__39444182] CHECK ((datepart(day,[svcCoveragePeriodStart3_3])=(1) AND datepart(month,[svcCoveragePeriodStart3_3])=(1) AND datepart(year,[svcCoveragePeriodStart3_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3A3865BB] CHECK ((datepart(day,[svcCoveragePeriodStart3_4])=(1) AND datepart(month,[svcCoveragePeriodStart3_4])=(1) AND datepart(year,[svcCoveragePeriodStart3_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3B2C89F4] CHECK ((datepart(day,[svcCoveragePeriodStart3_5])=(1) AND datepart(month,[svcCoveragePeriodStart3_5])=(1) AND datepart(year,[svcCoveragePeriodStart3_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3C20AE2D] CHECK ((datepart(day,[svcCoveragePeriodStart3_6])=(1) AND datepart(month,[svcCoveragePeriodStart3_6])=(1) AND datepart(year,[svcCoveragePeriodStart3_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__3D14D266] CHECK ((datepart(day,[svcCoveragePeriodStart3_7])=(1) AND datepart(month,[svcCoveragePeriodStart3_7])=(1) AND datepart(year,[svcCoveragePeriodStart3_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__44B5F42E] CHECK ((datepart(day,[svcCoveragePeriodStart4_1])=(1) AND datepart(month,[svcCoveragePeriodStart4_1])=(1) AND datepart(year,[svcCoveragePeriodStart4_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__45AA1867] CHECK ((datepart(day,[svcCoveragePeriodStart4_2])=(1) AND datepart(month,[svcCoveragePeriodStart4_2])=(1) AND datepart(year,[svcCoveragePeriodStart4_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__469E3CA0] CHECK ((datepart(day,[svcCoveragePeriodStart4_3])=(1) AND datepart(month,[svcCoveragePeriodStart4_3])=(1) AND datepart(year,[svcCoveragePeriodStart4_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__479260D9] CHECK ((datepart(day,[svcCoveragePeriodStart4_4])=(1) AND datepart(month,[svcCoveragePeriodStart4_4])=(1) AND datepart(year,[svcCoveragePeriodStart4_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__48868512] CHECK ((datepart(day,[svcCoveragePeriodStart4_5])=(1) AND datepart(month,[svcCoveragePeriodStart4_5])=(1) AND datepart(year,[svcCoveragePeriodStart4_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__497AA94B] CHECK ((datepart(day,[svcCoveragePeriodStart4_6])=(1) AND datepart(month,[svcCoveragePeriodStart4_6])=(1) AND datepart(year,[svcCoveragePeriodStart4_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [CK__SVC30682__svcCov__4A6ECD84] CHECK ((datepart(day,[svcCoveragePeriodStart4_7])=(1) AND datepart(month,[svcCoveragePeriodStart4_7])=(1) AND datepart(year,[svcCoveragePeriodStart4_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30682] ADD CONSTRAINT [PKSVC30682] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30682].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30682].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30682].[SVC_Contract_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30682].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd2_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd3_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd3_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd3_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd3_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd3_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd3_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd3_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodStart4_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd4_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd4_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd4_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd4_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd4_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd4_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30682].[svcCoveragePeriodEnd4_7]'
GO
GRANT SELECT ON  [dbo].[SVC30682] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30682] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30682] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30682] TO [DYNGRP]
GO
