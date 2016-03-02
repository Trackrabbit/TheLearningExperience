CREATE TABLE [dbo].[HR2ADA01]
(
[POSITIONCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTSTO_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SIT_I] [smallint] NOT NULL,
[STAND_I] [smallint] NOT NULL,
[WALK_I] [smallint] NOT NULL,
[HEIGHT_I] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BALANCEGB_I] [smallint] NOT NULL,
[BENDGB_I] [smallint] NOT NULL,
[CLIMBGB_I] [smallint] NOT NULL,
[CRAWLGB_I] [smallint] NOT NULL,
[CROUCHGB_I] [smallint] NOT NULL,
[KNEELGB_I] [smallint] NOT NULL,
[PUSHGB_I] [smallint] NOT NULL,
[REACHGB_I] [smallint] NOT NULL,
[SQUATGB_I] [smallint] NOT NULL,
[CARRYGB_I_1] [smallint] NOT NULL,
[CARRYGB_I_2] [smallint] NOT NULL,
[CARRYGB_I_3] [smallint] NOT NULL,
[CARRYGB_I_4] [smallint] NOT NULL,
[CARRYGB_I_5] [smallint] NOT NULL,
[CARRYGB_I_6] [smallint] NOT NULL,
[LIFTGB_I_1] [smallint] NOT NULL,
[LIFTGB_I_2] [smallint] NOT NULL,
[LIFTGB_I_3] [smallint] NOT NULL,
[LIFTGB_I_4] [smallint] NOT NULL,
[LIFTGB_I_5] [smallint] NOT NULL,
[LIFTGB_I_6] [smallint] NOT NULL,
[RFOOTGB_I] [smallint] NOT NULL,
[LFOOTGB_I] [smallint] NOT NULL,
[RHANDGB_I_1] [smallint] NOT NULL,
[RHANDGB_I_2] [smallint] NOT NULL,
[RHANDGB_I_3] [smallint] NOT NULL,
[LHANDGB_I_1] [smallint] NOT NULL,
[LHANDGB_I_2] [smallint] NOT NULL,
[LHANDGB_I_3] [smallint] NOT NULL,
[DANGERGB_I_1] [smallint] NOT NULL,
[DANGERGB_I_2] [smallint] NOT NULL,
[DANGERGB_I_3] [smallint] NOT NULL,
[DANGERGB_I_4] [smallint] NOT NULL,
[DANGERGB_I_5] [smallint] NOT NULL,
[CMNTS1_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMNTS2_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMNTS3_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMNTS4_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMNTS5_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPREPRESENT_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TITLE0_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[JOBPURPOSE_I] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR2ADA01] ADD CONSTRAINT [CK__HR2ADA01__CHANGE__6EA1A496] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2ADA01] ADD CONSTRAINT [CK__HR2ADA01__IDATE___6F95C8CF] CHECK ((datepart(hour,[IDATE_I])=(0) AND datepart(minute,[IDATE_I])=(0) AND datepart(second,[IDATE_I])=(0) AND datepart(millisecond,[IDATE_I])=(0)))
GO
ALTER TABLE [dbo].[HR2ADA01] ADD CONSTRAINT [PKHR2ADA01] PRIMARY KEY CLUSTERED  ([POSITIONCODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR2ADA01] ON [dbo].[HR2ADA01] ([REPORTSTO_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[POSITIONCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[REPORTSTO_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2ADA01].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[SIT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[STAND_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[WALK_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[HEIGHT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[BALANCEGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[BENDGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CLIMBGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CRAWLGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CROUCHGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[KNEELGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[PUSHGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[REACHGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[SQUATGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CARRYGB_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CARRYGB_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CARRYGB_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CARRYGB_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CARRYGB_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[CARRYGB_I_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LIFTGB_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LIFTGB_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LIFTGB_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LIFTGB_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LIFTGB_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LIFTGB_I_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[RFOOTGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LFOOTGB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[RHANDGB_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[RHANDGB_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[RHANDGB_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LHANDGB_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LHANDGB_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[LHANDGB_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[DANGERGB_I_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[DANGERGB_I_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[DANGERGB_I_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[DANGERGB_I_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR2ADA01].[DANGERGB_I_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[CMNTS1_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[CMNTS2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[CMNTS3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[CMNTS4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[CMNTS5_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[EMPREPRESENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR2ADA01].[TITLE0_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR2ADA01].[IDATE_I]'
GO
GRANT SELECT ON  [dbo].[HR2ADA01] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR2ADA01] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR2ADA01] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR2ADA01] TO [DYNGRP]
GO
