CREATE TABLE [dbo].[ME27657]
(
[SEQNUMBR] [int] NOT NULL,
[ME_Minimum_Password_Leng] [smallint] NOT NULL,
[ME_Password_Expiration_D] [smallint] NOT NULL,
[ME_Special_Check_Setup_S] [smallint] NOT NULL,
[ME_Special_SA_Security] [tinyint] NOT NULL,
[PRINTBLANKCHECKMENU] [tinyint] NOT NULL,
[SETSECURITY] [smallint] NOT NULL,
[PAYABLESTHRESHOLD] [numeric] (19, 5) NOT NULL,
[PAYROLLTHRESHOLD] [numeric] (19, 5) NOT NULL,
[CANADIANPAYROLLTHRESHOLD] [numeric] (19, 5) NOT NULL,
[MENUMOFAPPROVERS] [smallint] NOT NULL,
[MEPRINTSIGWHEN] [smallint] NOT NULL,
[MEDEFAULTFILEPATH1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEDEFAULTFILENAME1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEDEFAULTFILEPATH2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEDEFAULTFILENAME2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SIGNATUREIDUPR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SIGNATUREIDCDP] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTSECURITY] [tinyint] NOT NULL,
[MEWFAPPROVAL] [tinyint] NOT NULL,
[MESPLITBATCH] [tinyint] NOT NULL,
[MEDDSECURITY] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27657] ADD CONSTRAINT [PKME27657] PRIMARY KEY CLUSTERED  ([SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[ME_Minimum_Password_Leng]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[ME_Password_Expiration_D]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[ME_Special_Check_Setup_S]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[ME_Special_SA_Security]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[PRINTBLANKCHECKMENU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[SETSECURITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27657].[PAYABLESTHRESHOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27657].[PAYROLLTHRESHOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27657].[CANADIANPAYROLLTHRESHOLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[MENUMOFAPPROVERS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[MEPRINTSIGWHEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27657].[MEDEFAULTFILEPATH1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27657].[MEDEFAULTFILENAME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27657].[MEDEFAULTFILEPATH2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27657].[MEDEFAULTFILENAME2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27657].[SIGNATUREIDUPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27657].[SIGNATUREIDCDP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[EFTSECURITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[MEWFAPPROVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[MESPLITBATCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27657].[MEDDSECURITY]'
GO
GRANT SELECT ON  [dbo].[ME27657] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27657] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27657] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27657] TO [DYNGRP]
GO
