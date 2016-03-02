CREATE TABLE [dbo].[UPR10103]
(
[RPTNGYR] [smallint] NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDLNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOCSCNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GROSDIST] [numeric] (19, 5) NOT NULL,
[TXBAMNDT] [tinyint] NOT NULL,
[TAMD1099] [numeric] (19, 5) NOT NULL,
[TOTDSTCB] [tinyint] NOT NULL,
[CAPTLGAIN] [numeric] (19, 5) NOT NULL,
[FEDITXWH] [numeric] (19, 5) NOT NULL,
[EMPLECTR] [numeric] (19, 5) NOT NULL,
[NTREALAP] [numeric] (19, 5) NOT NULL,
[DSTCODE1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTCODE2] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSTCODE3] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IRASEPCB] [tinyint] NOT NULL,
[OTAM1099] [numeric] (19, 5) NOT NULL,
[OTPC1099] [numeric] (19, 5) NOT NULL,
[TTLTDSTPC] [numeric] (19, 5) NOT NULL,
[STATWGS1] [numeric] (19, 5) NOT NULL,
[STATWGS2] [numeric] (19, 5) NOT NULL,
[STAINTX1] [numeric] (19, 5) NOT NULL,
[STAINTX2] [numeric] (19, 5) NOT NULL,
[STATECD1] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATECD2] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESTIDNR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ESTIDBR2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LCLWGES1] [numeric] (19, 5) NOT NULL,
[LCLWGS2] [numeric] (19, 5) NOT NULL,
[LCLINTX1] [numeric] (19, 5) NOT NULL,
[LCLINTX2] [numeric] (19, 5) NOT NULL,
[LCLCODE1] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LCLCODE2] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Y1099RFC] [int] NOT NULL,
[EMPLSUFF] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR10103] ADD CONSTRAINT [PKUPR10103] PRIMARY KEY NONCLUSTERED  ([RPTNGYR], [EMPLOYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR10103] ON [dbo].[UPR10103] ([RPTNGYR], [DEPRTMNT], [LASTNAME], [FRSTNAME], [MIDLNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR10103] ON [dbo].[UPR10103] ([RPTNGYR], [LASTNAME], [FRSTNAME], [MIDLNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR10103] ON [dbo].[UPR10103] ([RPTNGYR], [SOCSCNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10103].[RPTNGYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[SOCSCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[GROSDIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10103].[TXBAMNDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[TAMD1099]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10103].[TOTDSTCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[CAPTLGAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[FEDITXWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[EMPLECTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[NTREALAP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[DSTCODE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[DSTCODE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[DSTCODE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10103].[IRASEPCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[OTAM1099]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[OTPC1099]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[TTLTDSTPC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[STATWGS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[STATWGS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[STAINTX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[STAINTX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[STATECD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[STATECD2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[ESTIDNR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[ESTIDBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[LCLWGES1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[LCLWGS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[LCLINTX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR10103].[LCLINTX2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[LCLCODE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[LCLCODE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR10103].[Y1099RFC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR10103].[EMPLSUFF]'
GO
GRANT SELECT ON  [dbo].[UPR10103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR10103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR10103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR10103] TO [DYNGRP]
GO
