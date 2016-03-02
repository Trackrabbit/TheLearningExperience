CREATE TABLE [dbo].[HR24BE17]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[I1_I] [smallint] NOT NULL,
[BENEFICIARYPRIMARY_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENCONTINGENT_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAMEA15_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAMEB15_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NAMEA50_I] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AGEEMPLOYEE_I] [smallint] NOT NULL,
[AGESPOUSE_I] [smallint] NOT NULL,
[CHILDREN_I] [smallint] NOT NULL,
[LIFEAMTMAX_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTMAXSPOUSE_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTMAXCHILD_I] [numeric] (19, 5) NOT NULL,
[NEAREST_I] [numeric] (19, 5) NOT NULL,
[NEARESTSPOUSE_I] [numeric] (19, 5) NOT NULL,
[NEARESTCHILD_I] [numeric] (19, 5) NOT NULL,
[BNFTFREQ] [smallint] NOT NULL,
[SMOKER_I] [tinyint] NOT NULL,
[SMOKERSP_I] [tinyint] NOT NULL,
[GB_I] [smallint] NOT NULL,
[NEARESTEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[PREMIUMEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[PREMIUMEMPLOYEE_I] [numeric] (19, 5) NOT NULL,
[PREMIUMSMOKER_I] [numeric] (19, 5) NOT NULL,
[PREMIUMSPOUSE_I] [numeric] (19, 5) NOT NULL,
[PREMSMOKESPOUSE_I] [numeric] (19, 5) NOT NULL,
[PREMIUMCHILD_I] [numeric] (19, 5) NOT NULL,
[LIFEINSURTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR24BE17] ADD CONSTRAINT [CK__HR24BE17__BNFBEG__6BC537EB] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[HR24BE17] ADD CONSTRAINT [PKHR24BE17] PRIMARY KEY CLUSTERED  ([EMPID_I], [BNFBEGDT], [BENEFIT], [I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR24BE17].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR24BE17].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR24BE17].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR24BE17].[BENEFICIARYPRIMARY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR24BE17].[BENCONTINGENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR24BE17].[NAMEA15_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR24BE17].[NAMEB15_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR24BE17].[NAMEA50_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[AGEEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[AGESPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[CHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[LIFEAMTMAX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[LIFEAMTMAXSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[LIFEAMTMAXCHILD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[NEAREST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[NEARESTSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[NEARESTCHILD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[BNFTFREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[SMOKER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[SMOKERSP_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[GB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[NEARESTEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[PREMIUMEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[PREMIUMEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[PREMIUMSMOKER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[PREMIUMSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[PREMSMOKESPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[HR24BE17].[PREMIUMCHILD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR24BE17].[LIFEINSURTYPE]'
GO
GRANT SELECT ON  [dbo].[HR24BE17] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR24BE17] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR24BE17] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR24BE17] TO [DYNGRP]
GO
