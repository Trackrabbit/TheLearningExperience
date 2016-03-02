CREATE TABLE [dbo].[LK4000]
(
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STACNMST] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Account_Number_String] [char] (129) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IFFILXST] [smallint] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[LK_Start_Token_Date] [smallint] NOT NULL,
[LKEnd_Token_Date] [smallint] NOT NULL,
[PRRPTFOR] [smallint] NOT NULL,
[PRVYRCMB] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[REPORTID] [smallint] NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[STTACNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTJRNL] [int] NOT NULL,
[ENDJRNAL] [int] NOT NULL,
[SSRCEDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSRCDC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LK_Start_Group] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LK_End_Group] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Start_LK_Link_No] [int] NOT NULL,
[End_LK_Link_No] [int] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[STTUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SORTBY] [smallint] NOT NULL,
[LK_Link_Balance] [numeric] (19, 5) NOT NULL,
[Multicurrency_Information] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LK4000] ADD CONSTRAINT [CK__LK4000__ENDDATE__52BDF375] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[LK4000] ADD CONSTRAINT [CK__LK4000__ENDINGDT__50D5AB03] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[LK4000] ADD CONSTRAINT [CK__LK4000__STRTDATE__51C9CF3C] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[LK4000] ADD CONSTRAINT [CK__LK4000__STRTNGDT__4FE186CA] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[LK4000] ADD CONSTRAINT [PKLK4000] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2LK4000] ON [dbo].[LK4000] ([RPTGRIND], [RTPACHIN], [REPORTID], [RTGRSBIN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[STACNMST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[End_Account_Number_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[LK_Start_Token_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[LKEnd_Token_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[PRRPTFOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[PRVYRCMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK4000].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK4000].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK4000].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[STTACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[STTACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[STTACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[STTACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[EACCNBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[EACCNBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[EACCNBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[EACCNBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[STRTJRNL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[ENDJRNAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[SSRCEDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[ENDSRCDC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[STRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[LK_Start_Group]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[LK_End_Group]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[ENTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[Start_LK_Link_No]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[End_LK_Link_No]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK4000].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[LK4000].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[STTUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[LK4000].[ENDUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[LK4000].[LK_Link_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[LK4000].[Multicurrency_Information]'
GO
GRANT REFERENCES ON  [dbo].[LK4000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[LK4000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LK4000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LK4000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LK4000] TO [DYNGRP]
GO
