CREATE TABLE [dbo].[AR2BEN08]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[I1_I] [smallint] NOT NULL,
[DATE1] [datetime] NOT NULL,
[BENEFITTYPE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFITSTATUS_I] [smallint] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[OVERRIDE_I] [tinyint] NOT NULL,
[IBENEFITAMOUNT_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTEMPL_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTSPOUSE_I] [numeric] (19, 5) NOT NULL,
[LIFEAMTCHILDREN_I] [numeric] (19, 5) NOT NULL,
[COSTEMPLOYEE_I] [numeric] (19, 5) NOT NULL,
[COSTEMPLOYER_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER1_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER2_I] [numeric] (19, 5) NOT NULL,
[COSTOTHER3_I] [numeric] (19, 5) NOT NULL,
[NUMBEROFCHILDREN_I] [smallint] NOT NULL,
[COSTTOTAL_I] [numeric] (19, 5) NOT NULL,
[COSTCOBRA_I] [numeric] (19, 5) NOT NULL,
[LIFEINSURTYPE] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AR2BEN08] ADD CONSTRAINT [CK__AR2BEN08__DATE1__5EA046F7] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[AR2BEN08] ADD CONSTRAINT [PKAR2BEN08] PRIMARY KEY CLUSTERED  ([EMPID_I], [BENEFIT], [I1_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN08].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN08].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN08].[I1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AR2BEN08].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AR2BEN08].[BENEFITTYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN08].[BENEFITSTATUS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN08].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN08].[OVERRIDE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[IBENEFITAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[LIFEAMTEMPL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[LIFEAMTSPOUSE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[LIFEAMTCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[COSTEMPLOYEE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[COSTEMPLOYER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[COSTOTHER1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[COSTOTHER2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[COSTOTHER3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN08].[NUMBEROFCHILDREN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[COSTTOTAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AR2BEN08].[COSTCOBRA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AR2BEN08].[LIFEINSURTYPE]'
GO
GRANT SELECT ON  [dbo].[AR2BEN08] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AR2BEN08] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AR2BEN08] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AR2BEN08] TO [DYNGRP]
GO
