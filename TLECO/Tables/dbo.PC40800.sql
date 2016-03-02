CREATE TABLE [dbo].[PC40800]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEMPSEAT] [tinyint] NOT NULL,
[SEAT] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACRUSTIM] [tinyint] NOT NULL,
[ACRUVACN] [tinyint] NOT NULL,
[Calc_Min_Wage_Bal] [tinyint] NOT NULL,
[CALCMINWAGEBALCB] [tinyint] NOT NULL,
[CONTENDDTE] [datetime] NOT NULL,
[CONTSTARTDTE] [datetime] NOT NULL,
[DIVISIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DIVISIONCODECB] [tinyint] NOT NULL,
[EMPLCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLCLASCB] [tinyint] NOT NULL,
[WCACFPAY] [smallint] NOT NULL,
[WHICHCACHACCTCB] [tinyint] NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNIDCB] [tinyint] NOT NULL,
[STMACMTH] [smallint] NOT NULL,
[SKTMACAM] [int] NOT NULL,
[SKTMHPYR] [int] NOT NULL,
[SUPERVISOR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPERVISORCB] [tinyint] NOT NULL,
[EMPLOYMENTTYPE] [smallint] NOT NULL,
[EMPLOYMENTTYPECB] [tinyint] NOT NULL,
[UNIONDUESAMOUNT_I] [numeric] (19, 5) NOT NULL,
[UNIONINFOCB] [tinyint] NOT NULL,
[UNIONNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VACCRMTH] [smallint] NOT NULL,
[VACCRAMT] [int] NOT NULL,
[VACAPRYR] [int] NOT NULL,
[VACSICKCB] [tinyint] NOT NULL,
[WRNSTFLSBLWZR] [tinyint] NOT NULL,
[WRNVCNFLSBLWZR] [tinyint] NOT NULL,
[WKHRPRYR] [smallint] NOT NULL,
[WKHRPRYRCB] [tinyint] NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRKRCOMPCB] [tinyint] NOT NULL,
[CONTACTNUM_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40800] ADD CONSTRAINT [CK__PC40800__CONTEND__64791BDE] CHECK ((datepart(hour,[CONTENDDTE])=(0) AND datepart(minute,[CONTENDDTE])=(0) AND datepart(second,[CONTENDDTE])=(0) AND datepart(millisecond,[CONTENDDTE])=(0)))
GO
ALTER TABLE [dbo].[PC40800] ADD CONSTRAINT [CK__PC40800__CONTSTA__656D4017] CHECK ((datepart(hour,[CONTSTARTDTE])=(0) AND datepart(minute,[CONTSTARTDTE])=(0) AND datepart(second,[CONTSTARTDTE])=(0) AND datepart(millisecond,[CONTSTARTDTE])=(0)))
GO
ALTER TABLE [dbo].[PC40800] ADD CONSTRAINT [PKPC40800] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[TEMPSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[ACRUSTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[ACRUVACN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[Calc_Min_Wage_Bal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[CALCMINWAGEBALCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40800].[CONTENDDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40800].[CONTSTARTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[DIVISIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[DIVISIONCODECB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[EMPLCLASCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[WCACFPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[WHICHCACHACCTCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[LOCATNIDCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[STMACMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[SKTMACAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[SKTMHPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[SUPERVISOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[SUPERVISORCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[EMPLOYMENTTYPECB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40800].[UNIONDUESAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[UNIONINFOCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[UNIONNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[VACCRMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[VACCRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[VACAPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[VACSICKCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[WRNSTFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[WRNVCNFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[WKHRPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[WKHRPRYRCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40800].[WRKRCOMPCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40800].[CONTACTNUM_I]'
GO
GRANT SELECT ON  [dbo].[PC40800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40800] TO [DYNGRP]
GO
