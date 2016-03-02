CREATE TABLE [dbo].[PP000012]
(
[PP_Module] [smallint] NOT NULL,
[PP_Record_Type] [smallint] NOT NULL,
[PP_Document_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PPOFFSEQ] [int] NOT NULL,
[PP_Sequencer] [int] NOT NULL,
[DISTTYPE] [smallint] NOT NULL,
[PP_Profile_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OFFINDX] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[PP_Deferred_BC_Index] [int] NOT NULL,
[PP_Deferrals_Transfer_In] [int] NOT NULL,
[PP_Recognition_Index] [int] NOT NULL,
[PP_Calculation_Method] [smallint] NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[NUMOFPER] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[PP_Overwrite_Original_Di] [tinyint] NOT NULL,
[PP_Miscellaneous_Periods] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000012] ADD CONSTRAINT [CK__PP000012__ENDING__0CFBAAF0] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000012] ADD CONSTRAINT [CK__PP000012__STRTNG__0DEFCF29] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000012] ADD CONSTRAINT [PKPP000012] PRIMARY KEY NONCLUSTERED  ([PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP000012] ON [dbo].[PP000012] ([PP_Profile_Name], [PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000012].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PPOFFSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Sequencer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000012].[PP_Profile_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Deferred_BC_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Deferrals_Transfer_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Recognition_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Calculation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000012].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000012].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[NUMOFPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP000012].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Overwrite_Original_Di]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000012].[PP_Miscellaneous_Periods]'
GO
GRANT SELECT ON  [dbo].[PP000012] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000012] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000012] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000012] TO [DYNGRP]
GO
