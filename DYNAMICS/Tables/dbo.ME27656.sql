CREATE TABLE [dbo].[ME27656]
(
[CMPANYID] [smallint] NOT NULL,
[ME_Major_Version] [smallint] NOT NULL,
[ME_Minor_Version] [smallint] NOT NULL,
[ME_Build_Number] [smallint] NOT NULL,
[ME_Attempted_Date] [datetime] NOT NULL,
[ME_Attempted_Time] [datetime] NOT NULL,
[ME_Attempted_Build] [smallint] NOT NULL,
[ME_Attempted_Major_Versi] [smallint] NOT NULL,
[ME_Attempted_Minor_Versi] [smallint] NOT NULL,
[ME_Completed_Date] [datetime] NOT NULL,
[ME_Completed_Time] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Status_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27656] ADD CONSTRAINT [CK__ME27656__ME_Atte__60BE0156] CHECK ((datepart(day,[ME_Attempted_Time])=(1) AND datepart(month,[ME_Attempted_Time])=(1) AND datepart(year,[ME_Attempted_Time])=(1900)))
GO
ALTER TABLE [dbo].[ME27656] ADD CONSTRAINT [CK__ME27656__ME_Comp__62A649C8] CHECK ((datepart(day,[ME_Completed_Time])=(1) AND datepart(month,[ME_Completed_Time])=(1) AND datepart(year,[ME_Completed_Time])=(1900)))
GO
ALTER TABLE [dbo].[ME27656] ADD CONSTRAINT [CK__ME27656__ME_Atte__5FC9DD1D] CHECK ((datepart(hour,[ME_Attempted_Date])=(0) AND datepart(minute,[ME_Attempted_Date])=(0) AND datepart(second,[ME_Attempted_Date])=(0) AND datepart(millisecond,[ME_Attempted_Date])=(0)))
GO
ALTER TABLE [dbo].[ME27656] ADD CONSTRAINT [CK__ME27656__ME_Comp__61B2258F] CHECK ((datepart(hour,[ME_Completed_Date])=(0) AND datepart(minute,[ME_Completed_Date])=(0) AND datepart(second,[ME_Completed_Date])=(0) AND datepart(millisecond,[ME_Completed_Date])=(0)))
GO
ALTER TABLE [dbo].[ME27656] ADD CONSTRAINT [PKME27656] PRIMARY KEY CLUSTERED  ([CMPANYID], [ME_Major_Version], [ME_Minor_Version], [ME_Build_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27656].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27656].[ME_Major_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27656].[ME_Minor_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27656].[ME_Build_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27656].[ME_Attempted_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27656].[ME_Attempted_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27656].[ME_Attempted_Build]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27656].[ME_Attempted_Major_Versi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27656].[ME_Attempted_Minor_Versi]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27656].[ME_Completed_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27656].[ME_Completed_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27656].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27656].[ME_Status_Description]'
GO
GRANT SELECT ON  [dbo].[ME27656] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27656] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27656] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27656] TO [DYNGRP]
GO
