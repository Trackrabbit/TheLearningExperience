CREATE TABLE [dbo].[PP100100]
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
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntegerValue] [smallint] NOT NULL,
[PP_Calculation_Method] [smallint] NOT NULL,
[PP_Miscellaneous_Periods] [smallint] NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[CUSTVNDR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[JRNENTRY] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP100100] ADD CONSTRAINT [CK__PP100100__DOCDAT__26BB7CF3] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PP100100] ADD CONSTRAINT [CK__PP100100__ENDING__27AFA12C] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[PP100100] ADD CONSTRAINT [CK__PP100100__STRTNG__28A3C565] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[PP100100] ADD CONSTRAINT [PKPP100100] PRIMARY KEY NONCLUSTERED  ([PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PP100100] ON [dbo].[PP100100] ([ACTINDX], [PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PP100100] ON [dbo].[PP100100] ([CUSTVNDR], [PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PP100100] ON [dbo].[PP100100] ([DOCDATE], [PP_Module], [PP_Record_Type], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP100100] ON [dbo].[PP100100] ([PP_Document_Number], [PP_Module], [PP_Record_Type], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PP100100] ON [dbo].[PP100100] ([PP_Record_Type], [PP_Module], [PP_Document_Number], [PP_Sequencer], [PPOFFSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Record_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP100100].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Sequencer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PPOFFSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP100100].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[DSTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP100100].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP100100].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[OFFACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Deferred_BC_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Deferrals_Transfer_In]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Recognition_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP100100].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP100100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP100100].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[IntegerValue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Calculation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[PP_Miscellaneous_Periods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[VOIDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP100100].[CUSTVNDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP100100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP100100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP100100].[JRNENTRY]'
GO
GRANT SELECT ON  [dbo].[PP100100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP100100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP100100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP100100] TO [DYNGRP]
GO
