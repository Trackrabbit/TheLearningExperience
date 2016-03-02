CREATE TABLE [dbo].[SY90100]
(
[Business_Type] [smallint] NOT NULL,
[INDUSTYP] [smallint] NOT NULL,
[DEFCHRAC_1] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_2] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_3] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_4] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCHRAC_5] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[ACCATNUM] [smallint] NOT NULL,
[TPCLBLNC] [smallint] NOT NULL,
[Posting_Account_Series_1] [smallint] NOT NULL,
[Posting_Account_Series_2] [smallint] NOT NULL,
[Posting_Account_Series_3] [smallint] NOT NULL,
[Posting_Account_Series_4] [smallint] NOT NULL,
[Posting_Account_Series_5] [smallint] NOT NULL,
[Posting_Account_Series_6] [smallint] NOT NULL,
[Posting_Account_Series_7] [smallint] NOT NULL,
[Posting_Account_Series_8] [smallint] NOT NULL,
[Posting_Account_Series_9] [smallint] NOT NULL,
[Posting_Account_Series_10] [smallint] NOT NULL,
[Posting_Account_Series_11] [smallint] NOT NULL,
[Posting_Account_Sequence_1] [smallint] NOT NULL,
[Posting_Account_Sequence_2] [smallint] NOT NULL,
[Posting_Account_Sequence_3] [smallint] NOT NULL,
[Posting_Account_Sequence_4] [smallint] NOT NULL,
[Posting_Account_Sequence_5] [smallint] NOT NULL,
[Posting_Account_Sequence_6] [smallint] NOT NULL,
[Posting_Account_Sequence_7] [smallint] NOT NULL,
[Posting_Account_Sequence_8] [smallint] NOT NULL,
[Posting_Account_Sequence_9] [smallint] NOT NULL,
[Posting_Account_Sequence_10] [smallint] NOT NULL,
[Posting_Account_Sequence_11] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY90100] ADD CONSTRAINT [PKSY90100] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SY90100] ON [dbo].[SY90100] ([Business_Type], [INDUSTYP], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Business_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[INDUSTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90100].[DEFCHRAC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90100].[DEFCHRAC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90100].[DEFCHRAC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90100].[DEFCHRAC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90100].[DEFCHRAC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY90100].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[ACCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[TPCLBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Series_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY90100].[Posting_Account_Sequence_11]'
GO
GRANT SELECT ON  [dbo].[SY90100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY90100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY90100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY90100] TO [DYNGRP]
GO
