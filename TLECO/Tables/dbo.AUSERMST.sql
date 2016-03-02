CREATE TABLE [dbo].[AUSERMST]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCESSLEVEL_I] [smallint] NOT NULL,
[PostIvIn] [smallint] NOT NULL,
[PostPRIn] [smallint] NOT NULL,
[PostPurchIn] [smallint] NOT NULL,
[PASSWORD] [binary] (16) NOT NULL,
[USRCLASS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MDFRDENT] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[SHRQFLDS] [tinyint] NOT NULL,
[DISTPROC] [smallint] NOT NULL,
[HSCRLARW] [tinyint] NOT NULL,
[CHECK1_I] [tinyint] NOT NULL,
[CHECK2_I] [tinyint] NOT NULL,
[CHECK3_I] [tinyint] NOT NULL,
[CHECK4_I] [tinyint] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AUSERMST] ADD CONSTRAINT [CK__AUSERMST__CREATD__7E18F250] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[AUSERMST] ADD CONSTRAINT [CK__AUSERMST__MODIFD__7F0D1689] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[AUSERMST] ADD CONSTRAINT [PKAUSERMST] PRIMARY KEY NONCLUSTERED  ([USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AUSERMST] ON [dbo].[AUSERMST] ([EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AUSERMST] ON [dbo].[AUSERMST] ([USERNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AUSERMST] ON [dbo].[AUSERMST] ([USRCLASS], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AUSERMST].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AUSERMST].[USERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AUSERMST].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[ACCESSLEVEL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[PostIvIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[PostPRIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[PostPurchIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AUSERMST].[USRCLASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[MDFRDENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AUSERMST].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AUSERMST].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AUSERMST].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[SHRQFLDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[DISTPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[HSCRLARW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[CHECK1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[CHECK2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[CHECK3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[CHECK4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AUSERMST].[INACTIVE]'
GO
GRANT SELECT ON  [dbo].[AUSERMST] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AUSERMST] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AUSERMST] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AUSERMST] TO [DYNGRP]
GO
