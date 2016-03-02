CREATE TABLE [dbo].[AR2BEN39]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[I2_I] [smallint] NOT NULL,
[I1_I] [smallint] NOT NULL,
[BENEFITFUNDCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFITFUNDNAME_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[IBENEFITPERCENT_I] [smallint] NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AR2BEN39] ADD CONSTRAINT [CK__AR2BEN39__BNFBEG__6B061DDC] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[AR2BEN39] ADD CONSTRAINT [PKAR2BEN39] PRIMARY KEY CLUSTERED  ([EMPID_I], [BNFBEGDT], [BENEFIT], [I2_I], [I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN39].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AR2BEN39].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN39].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN39].[I2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN39].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN39].[BENEFITFUNDCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN39].[BENEFITFUNDNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN39].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN39].[IBENEFITPERCENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN39].[IBENEFITAMOUNT_I]'
GO
GRANT SELECT ON  [dbo].[AR2BEN39] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AR2BEN39] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AR2BEN39] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AR2BEN39] TO [DYNGRP]
GO
