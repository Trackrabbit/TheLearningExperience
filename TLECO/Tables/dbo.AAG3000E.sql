CREATE TABLE [dbo].[AAG3000E]
(
[aaGLWorkHdrID] [int] NOT NULL,
[aaGLWorkDistID] [int] NOT NULL,
[aaGLWorkAssignID] [int] NOT NULL,
[aaDisplayDistID] [int] NOT NULL,
[AADOCVAL] [tinyint] NOT NULL,
[aaErrorNum] [smallint] NOT NULL,
[aaTrxDim] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAcctClassID] [int] NOT NULL,
[aaTrxDimCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaRelatedTrxDim] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaRelatedTrxDimCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAccountClass] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG3000E] ADD CONSTRAINT [PKAAG3000E] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG3000E] ON [dbo].[AAG3000E] ([AADOCVAL], [aaGLWorkHdrID], [aaGLWorkDistID], [aaGLWorkAssignID], [aaErrorNum], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1AAG3000E] ON [dbo].[AAG3000E] ([aaGLWorkHdrID], [aaGLWorkDistID], [aaGLWorkAssignID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG3000E].[aaGLWorkHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG3000E].[aaGLWorkDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG3000E].[aaGLWorkAssignID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG3000E].[aaDisplayDistID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG3000E].[AADOCVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG3000E].[aaErrorNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG3000E].[aaTrxDim]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG3000E].[aaAcctClassID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG3000E].[aaTrxDimCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG3000E].[aaRelatedTrxDim]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG3000E].[aaRelatedTrxDimCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG3000E].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG3000E].[aaAccountClass]'
GO
GRANT SELECT ON  [dbo].[AAG3000E] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG3000E] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG3000E] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG3000E] TO [DYNGRP]
GO
