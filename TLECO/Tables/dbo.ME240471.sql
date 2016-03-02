CREATE TABLE [dbo].[ME240471]
(
[ME_PayrollCode_Type] [smallint] NOT NULL,
[ME_Payroll_Code] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME240471] ADD CONSTRAINT [CK__ME240471__MODIFD__32EEDD7D] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[ME240471] ADD CONSTRAINT [PKME240471] PRIMARY KEY NONCLUSTERED  ([ME_PayrollCode_Type], [ME_Payroll_Code]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME240471].[ME_PayrollCode_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240471].[ME_Payroll_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240471].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME240471].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME240471].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[ME240471] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME240471] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME240471] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME240471] TO [DYNGRP]
GO
