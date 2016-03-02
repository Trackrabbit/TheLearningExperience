CREATE TABLE [dbo].[PP000011]
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
[PP_Miscellaneous_Periods] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE TRIGGER [dbo].[PP_PP000011_Delete] ON [dbo].[PP000011] FOR DELETE AS Delete from PP000042   from PP000042 a, deleted b where a.PP_Module = b.PP_Module and a.PP_Record_Type = b.PP_Record_Type and a.PP_Document_Number = b.PP_Document_Number and a.PP_Sequencer = b.PP_Sequencer   
GO
ALTER TABLE [dbo].[PP000011] ADD CONSTRAINT [CK__PP000011__ENDING__092B1A0C] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000011] ADD CONSTRAINT [CK__PP000011__STRTNG__0A1F3E45] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000011] ADD CONSTRAINT [PKPP000011] PRIMARY KEY NONCLUSTERED  ([PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000011].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PPOFFSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Sequencer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[DISTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000011].[PP_Profile_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Deferred_BC_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Deferrals_Transfer_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Recognition_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Calculation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000011].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000011].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[NUMOFPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP000011].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000011].[PP_Miscellaneous_Periods]'
GO
GRANT SELECT ON  [dbo].[PP000011] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000011] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000011] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000011] TO [DYNGRP]
GO
