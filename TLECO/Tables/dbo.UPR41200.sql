CREATE TABLE [dbo].[UPR41200]
(
[EMPLCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEPRTMNT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUTASTAT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WRKRCOMP] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINETPAY] [numeric] (19, 5) NOT NULL,
[WKHRPRYR] [smallint] NOT NULL,
[WCACFPAY] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ATACRVAC] [tinyint] NOT NULL,
[VACCRMTH] [smallint] NOT NULL,
[VACCRAMT] [int] NOT NULL,
[VACAPRYR] [int] NOT NULL,
[VACAVLBL] [int] NOT NULL,
[WRNVCNFLSBLWZR] [tinyint] NOT NULL,
[ATACRSTM] [tinyint] NOT NULL,
[STMACMTH] [smallint] NOT NULL,
[SKTMACAM] [int] NOT NULL,
[SKTMHPYR] [int] NOT NULL,
[SIKTIMAV] [int] NOT NULL,
[WRNSTFLSBLWZR] [tinyint] NOT NULL,
[DEFLTCLS] [tinyint] NOT NULL,
[Calc_Min_Wage_Bal] [tinyint] NOT NULL,
[EMPLOYMENTTYPE] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ASSIGNMENTCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Time_on_Behalf_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41200] ADD CONSTRAINT [PKUPR41200] PRIMARY KEY NONCLUSTERED  ([EMPLCLAS]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3UPR41200] ON [dbo].[UPR41200] ([DEFLTCLS], [EMPLCLAS]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4UPR41200] ON [dbo].[UPR41200] ([DEPRTMNT], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41200] ON [dbo].[UPR41200] ([DSCRIPTN], [EMPLCLAS]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7UPR41200] ON [dbo].[UPR41200] ([EMPLCLAS], [DSCRIPTN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5UPR41200] ON [dbo].[UPR41200] ([JOBTITLE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6UPR41200] ON [dbo].[UPR41200] ([WRKRCOMP], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[EMPLCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[DEPRTMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[SUTASTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[WRKRCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41200].[MINETPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[WKHRPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[WCACFPAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[ATACRVAC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[VACCRMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[VACCRAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[VACAPRYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[VACAVLBL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[WRNVCNFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[ATACRSTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[STMACMTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[SKTMACAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[SKTMHPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[SIKTIMAV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[WRNSTFLSBLWZR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[DEFLTCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[Calc_Min_Wage_Bal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41200].[EMPLOYMENTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41200].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[ASSIGNMENTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41200].[Time_on_Behalf_Code]'
GO
GRANT SELECT ON  [dbo].[UPR41200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41200] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR41200] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[UPR41200] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[UPR41200] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41200] TO [RAPIDGRP]
GO
GRANT SELECT ON  [dbo].[UPR41200] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[UPR41200] TO [rpt_human resource administrator]
GO
GRANT SELECT ON  [dbo].[UPR41200] TO [rpt_payroll]
GO
