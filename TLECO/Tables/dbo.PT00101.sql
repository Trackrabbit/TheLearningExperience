CREATE TABLE [dbo].[PT00101]
(
[PROJNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROJDESC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROJMGR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROJTYPE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESTSTARTDATE] [datetime] NOT NULL,
[ESTCOMPDATE] [datetime] NOT NULL,
[ACTSTARTDATE] [datetime] NOT NULL,
[ACTCOMPDATE] [datetime] NOT NULL,
[PROJSTATUS] [smallint] NOT NULL,
[CLOSEDTOBILL] [tinyint] NOT NULL,
[CLOSEDTOCOST] [tinyint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRBTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESTPREFER] [smallint] NOT NULL,
[ESTMATCOST] [numeric] (19, 5) NOT NULL,
[ESTLABORCOST] [numeric] (19, 5) NOT NULL,
[ESTMISCCOST] [numeric] (19, 5) NOT NULL,
[ESTMATREV] [numeric] (19, 5) NOT NULL,
[ESTLABORREV] [numeric] (19, 5) NOT NULL,
[ESTMISCREV] [numeric] (19, 5) NOT NULL,
[ACTMATCOST] [numeric] (19, 5) NOT NULL,
[ACTLABORCOST] [numeric] (19, 5) NOT NULL,
[ACTMISCCOST] [numeric] (19, 5) NOT NULL,
[ACTMATREV] [numeric] (19, 5) NOT NULL,
[ACTLABORREV] [numeric] (19, 5) NOT NULL,
[ACTMISCREV] [numeric] (19, 5) NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PT00101] ADD CONSTRAINT [CK__PT00101__ACTCOMP__46BD6CDA] CHECK ((datepart(hour,[ACTCOMPDATE])=(0) AND datepart(minute,[ACTCOMPDATE])=(0) AND datepart(second,[ACTCOMPDATE])=(0) AND datepart(millisecond,[ACTCOMPDATE])=(0)))
GO
ALTER TABLE [dbo].[PT00101] ADD CONSTRAINT [CK__PT00101__ACTSTAR__47B19113] CHECK ((datepart(hour,[ACTSTARTDATE])=(0) AND datepart(minute,[ACTSTARTDATE])=(0) AND datepart(second,[ACTSTARTDATE])=(0) AND datepart(millisecond,[ACTSTARTDATE])=(0)))
GO
ALTER TABLE [dbo].[PT00101] ADD CONSTRAINT [CK__PT00101__CREATDD__48A5B54C] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[PT00101] ADD CONSTRAINT [CK__PT00101__ESTCOMP__4999D985] CHECK ((datepart(hour,[ESTCOMPDATE])=(0) AND datepart(minute,[ESTCOMPDATE])=(0) AND datepart(second,[ESTCOMPDATE])=(0) AND datepart(millisecond,[ESTCOMPDATE])=(0)))
GO
ALTER TABLE [dbo].[PT00101] ADD CONSTRAINT [CK__PT00101__ESTSTAR__4A8DFDBE] CHECK ((datepart(hour,[ESTSTARTDATE])=(0) AND datepart(minute,[ESTSTARTDATE])=(0) AND datepart(second,[ESTSTARTDATE])=(0) AND datepart(millisecond,[ESTSTARTDATE])=(0)))
GO
ALTER TABLE [dbo].[PT00101] ADD CONSTRAINT [CK__PT00101__MODIFDT__4B8221F7] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[PT00101] ADD CONSTRAINT [PKPT00101] PRIMARY KEY NONCLUSTERED  ([PROJNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PT00101] ON [dbo].[PT00101] ([CUSTNMBR], [PROJNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PT00101] ON [dbo].[PT00101] ([ESTSTARTDATE], [PROJNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PT00101] ON [dbo].[PT00101] ([PROJMGR], [PROJSTATUS], [PROJNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PT00101] ON [dbo].[PT00101] ([PROJSTATUS], [PROJNAME]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PT00101] ON [dbo].[PT00101] ([PROJTYPE], [PROJNAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[PROJNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[PROJDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[PROJMGR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[PROJTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PT00101].[ESTSTARTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PT00101].[ESTCOMPDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PT00101].[ACTSTARTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PT00101].[ACTCOMPDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT00101].[PROJSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT00101].[CLOSEDTOBILL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT00101].[CLOSEDTOCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[PRBTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[ZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PT00101].[ESTPREFER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ESTMATCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ESTLABORCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ESTMISCCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ESTMATREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ESTLABORREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ESTMISCREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ACTMATCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ACTLABORCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ACTMISCCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ACTMATREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ACTLABORREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[ACTMISCREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PT00101].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PT00101].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PT00101].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PT00101].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[PT00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PT00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PT00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PT00101] TO [DYNGRP]
GO
