CREATE TABLE [dbo].[PP000001]
(
[UNIQKEY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSRCPX] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NTRXSNUM] [int] NOT NULL,
[PP_Document_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Open_Closed_Periods] [smallint] NOT NULL,
[PP_Auto_Post] [smallint] NOT NULL,
[PP_Auto_Post_Back] [smallint] NOT NULL,
[PP_RM_Initial_Posting] [smallint] NOT NULL,
[PP_PM_Initial_Posting] [smallint] NOT NULL,
[PP_Calculation_Method] [smallint] NOT NULL,
[PPPRTRPT] [tinyint] NOT NULL,
[PPPRTPRT] [tinyint] NOT NULL,
[PPPRTSCN] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PP_Void_Trns] [smallint] NOT NULL,
[PP_Overide_Access] [smallint] NOT NULL,
[PP_Profile_Account_Overw] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000001] ADD CONSTRAINT [PKPP000001] PRIMARY KEY NONCLUSTERED  ([UNIQKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000001].[UNIQKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000001].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000001].[TRXSRCPX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[NTRXSNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000001].[PP_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_Open_Closed_Periods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_Auto_Post]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_Auto_Post_Back]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_RM_Initial_Posting]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_PM_Initial_Posting]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_Calculation_Method]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PPPRTRPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PPPRTPRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PPPRTSCN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_Void_Trns]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_Overide_Access]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000001].[PP_Profile_Account_Overw]'
GO
GRANT SELECT ON  [dbo].[PP000001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000001] TO [DYNGRP]
GO
