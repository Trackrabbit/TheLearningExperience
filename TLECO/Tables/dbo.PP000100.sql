CREATE TABLE [dbo].[PP000100]
(
[PP_Module] [smallint] NOT NULL,
[PP_Record_Type] [smallint] NOT NULL,
[PP_Document_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Sequencer] [int] NOT NULL,
[PPOFFSEQ] [int] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[DSTSQNUM] [int] NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[OFFACCT] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[PP_Deferred_BC_Index] [int] NOT NULL,
[PP_Deferrals_Transfer_In] [int] NOT NULL,
[PP_Recognition_Index] [int] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POSTING] [tinyint] NOT NULL,
[IntegerValue] [smallint] NOT NULL,
[PP_Calculation_Method] [smallint] NOT NULL,
[PP_Miscellaneous_Periods] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[JRNENTRY] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE TRIGGER [dbo].[PP_PP000100_Delete] ON [dbo].[PP000100] FOR DELETE AS Delete from PP000101   from PP000101 a, deleted b where a.PP_Module = b.PP_Module and a.PP_Record_Type = b.PP_Record_Type and a.PP_Document_Number = b.PP_Document_Number and a.PP_Sequencer = b.PP_Sequencer and a.PPOFFSEQ = b.PPOFFSEQ Delete from PP000011   from PP000011 a, deleted b where a.PP_Module = b.PP_Module and a.PP_Record_Type = b.PP_Record_Type and a.PP_Document_Number = b.PP_Document_Number and a.PP_Sequencer = b.PP_Sequencer   
GO
ALTER TABLE [dbo].[PP000100] ADD CONSTRAINT [CK__PP000100__ENDING__200E7F64] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000100] ADD CONSTRAINT [CK__PP000100__STRTNG__2102A39D] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000100] ADD CONSTRAINT [PKPP000100] PRIMARY KEY NONCLUSTERED  ([PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP000100] ON [dbo].[PP000100] ([USERID], [PP_Module], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000100].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Sequencer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PPOFFSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000100].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000100].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[OFFACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Deferred_BC_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Deferrals_Transfer_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Recognition_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP000100].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000100].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[POSTING]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[IntegerValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Calculation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[PP_Miscellaneous_Periods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP000100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000100].[JRNENTRY]'
GO
GRANT SELECT ON  [dbo].[PP000100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000100] TO [DYNGRP]
GO
