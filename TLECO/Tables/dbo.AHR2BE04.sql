CREATE TABLE [dbo].[AHR2BE04]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[DATEDUE_I] [datetime] NOT NULL,
[COMMENTSTR10_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHECK3_I] [tinyint] NOT NULL,
[CHECK4_I] [tinyint] NOT NULL,
[CHECK5_I] [tinyint] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFITCOST_I] [numeric] (19, 5) NOT NULL,
[BENEFITCOST2_I] [numeric] (19, 5) NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHR2BE04] ADD CONSTRAINT [CK__AHR2BE04__DATEDU__5ED55121] CHECK ((datepart(hour,[DATEDUE_I])=(0) AND datepart(minute,[DATEDUE_I])=(0) AND datepart(second,[DATEDUE_I])=(0) AND datepart(millisecond,[DATEDUE_I])=(0)))
GO
ALTER TABLE [dbo].[AHR2BE04] ADD CONSTRAINT [PKAHR2BE04] PRIMARY KEY CLUSTERED  ([EMPID_I], [BENEFIT]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2BE04].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2BE04].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2BE04].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHR2BE04].[DATEDUE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2BE04].[COMMENTSTR10_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2BE04].[CHECK3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2BE04].[CHECK4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHR2BE04].[CHECK5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHR2BE04].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2BE04].[BENEFITCOST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2BE04].[BENEFITCOST2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHR2BE04].[IBENEFITAMOUNT_I]'
GO
GRANT SELECT ON  [dbo].[AHR2BE04] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHR2BE04] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHR2BE04] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHR2BE04] TO [DYNGRP]
GO
