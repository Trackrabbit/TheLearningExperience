CREATE TABLE [dbo].[PP000060]
(
[IFFILXST] [smallint] NOT NULL,
[FILEXPNM] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPTTYPE] [smallint] NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[PRNTOFIL] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[PRNTTYPE] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[REPORTID] [smallint] NOT NULL,
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[STTSEGID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSEGID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STGENINT1] [smallint] NOT NULL,
[ENDGENINT1] [smallint] NOT NULL,
[STDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRMTKDT] [smallint] NOT NULL,
[ENRMTKDT] [smallint] NOT NULL,
[SORTBY] [smallint] NOT NULL,
[CBINACTS] [tinyint] NOT NULL,
[PSTNGACT] [smallint] NOT NULL,
[UNITACCT] [smallint] NOT NULL,
[RPRTSHOW] [smallint] NOT NULL,
[PRRPTFOR] [smallint] NOT NULL,
[PRVYRCMB] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTDETAL] [smallint] NOT NULL,
[INDIVDUL_1] [tinyint] NOT NULL,
[INDIVDUL_2] [tinyint] NOT NULL,
[INDIVDUL_3] [tinyint] NOT NULL,
[INDIVDUL_4] [tinyint] NOT NULL,
[INDIVDUL_5] [tinyint] NOT NULL,
[INDIVDUL_6] [tinyint] NOT NULL,
[INDIVDUL_7] [tinyint] NOT NULL,
[INDIVDUL_8] [tinyint] NOT NULL,
[INDIVDUL_9] [tinyint] NOT NULL,
[INDIVDUL_10] [tinyint] NOT NULL,
[INDIVDUL_11] [tinyint] NOT NULL,
[INDIVDUL_12] [tinyint] NOT NULL,
[INDIVDUL_13] [tinyint] NOT NULL,
[INDIVDUL_14] [tinyint] NOT NULL,
[INDIVDUL_15] [tinyint] NOT NULL,
[INDIVDUL_16] [tinyint] NOT NULL,
[INDIVDUL_17] [tinyint] NOT NULL,
[INDIVDUL_18] [tinyint] NOT NULL,
[INDIVDUL_19] [tinyint] NOT NULL,
[INDIVDUL_20] [tinyint] NOT NULL,
[INDIVDUL_21] [tinyint] NOT NULL,
[INDIVDUL_22] [tinyint] NOT NULL,
[INDIVDUL_23] [tinyint] NOT NULL,
[INDIVDUL_24] [tinyint] NOT NULL,
[INDIVDUL_25] [tinyint] NOT NULL,
[INDIVDUL_26] [tinyint] NOT NULL,
[INDIVDUL_27] [tinyint] NOT NULL,
[INDIVDUL_28] [tinyint] NOT NULL,
[INDIVDUL_29] [tinyint] NOT NULL,
[INDIVDUL_30] [tinyint] NOT NULL,
[INDIVDUL_31] [tinyint] NOT NULL,
[INDIVDUL_32] [tinyint] NOT NULL,
[INDIVDUL_33] [tinyint] NOT NULL,
[INDIVDUL_34] [tinyint] NOT NULL,
[INDIVDUL_35] [tinyint] NOT NULL,
[INDIVDUL_36] [tinyint] NOT NULL,
[INDIVDUL_37] [tinyint] NOT NULL,
[INDIVDUL_38] [tinyint] NOT NULL,
[INDIVDUL_39] [tinyint] NOT NULL,
[INDIVDUL_40] [tinyint] NOT NULL,
[INDIVDUL_41] [tinyint] NOT NULL,
[PRNTDSCR] [smallint] NOT NULL,
[PRZROBAL] [tinyint] NOT NULL,
[CLCRATIO] [smallint] NOT NULL,
[INCLGNDS] [tinyint] NOT NULL,
[GLSTTKDT] [smallint] NOT NULL,
[GLENTKDT] [smallint] NOT NULL,
[PRUNTACT] [tinyint] NOT NULL,
[STACCNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STACCNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STACCNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STACCNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EDGACNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EDGACNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EDGACNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EDGACNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGSRTBY] [smallint] NOT NULL,
[RANGEBY] [smallint] NOT NULL,
[ACCLSTAT] [smallint] NOT NULL,
[USEACCEL] [tinyint] NOT NULL,
[CBZBNA] [tinyint] NOT NULL,
[Accounts_Included] [smallint] NOT NULL,
[Start_Position_String] [char] (89) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Position_String] [char] (89) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTXRATE] [numeric] (19, 7) NOT NULL,
[RPRTCLMD] [smallint] NOT NULL,
[PRTCURIN] [smallint] NOT NULL,
[Checkbook_Date] [datetime] NOT NULL,
[End_Month] [smallint] NOT NULL,
[Start_Month] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PP_Start_Profile] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_End_Profile] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STVNDRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCUSTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDVNDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PP_Report_Sort] [smallint] NOT NULL,
[PP_Last_Date] [datetime] NOT NULL,
[PP_User_Access] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PP000060] ADD CONSTRAINT [CK__PP000060__Checkb__6F2527F9] CHECK ((datepart(hour,[Checkbook_Date])=(0) AND datepart(minute,[Checkbook_Date])=(0) AND datepart(second,[Checkbook_Date])=(0) AND datepart(millisecond,[Checkbook_Date])=(0)))
GO
ALTER TABLE [dbo].[PP000060] ADD CONSTRAINT [CK__PP000060__ENDING__6E3103C0] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000060] ADD CONSTRAINT [CK__PP000060__PP_Las__70194C32] CHECK ((datepart(hour,[PP_Last_Date])=(0) AND datepart(minute,[PP_Last_Date])=(0) AND datepart(second,[PP_Last_Date])=(0) AND datepart(millisecond,[PP_Last_Date])=(0)))
GO
ALTER TABLE [dbo].[PP000060] ADD CONSTRAINT [CK__PP000060__STRTNG__6D3CDF87] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[PP000060] ADD CONSTRAINT [PKPP000060] PRIMARY KEY NONCLUSTERED  ([RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PP000060] ON [dbo].[PP000060] ([RPTGRIND], [RTPACHIN], [REPORTID], [RTGRSBIN]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP000060].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000060].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000060].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STTSEGID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[ENDSEGID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[STGENINT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[ENDGENINT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[ENDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[STRMTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[ENRMTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[CBINACTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PSTNGACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[UNITACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[RPRTSHOW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRRPTFOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[PRVYRCMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[RPTDETAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INDIVDUL_41]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRNTDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRZROBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[CLCRATIO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[GLSTTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[GLENTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRUNTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STACCNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STACCNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STACCNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STACCNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[EDGACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[EDGACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[EDGACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[EDGACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[SEGSRTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[RANGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[ACCLSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[USEACCEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[CBZBNA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[Accounts_Included]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[Start_Position_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[End_Position_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PP000060].[RPTXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[RPRTCLMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PRTCURIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000060].[Checkbook_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[End_Month]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[Start_Month]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[PP_Start_Profile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[PP_End_Profile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STVNDRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[STCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[ENCUSTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PP000060].[ENDVNDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PP_Report_Sort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PP000060].[PP_Last_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PP000060].[PP_User_Access]'
GO
GRANT SELECT ON  [dbo].[PP000060] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PP000060] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PP000060] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PP000060] TO [DYNGRP]
GO
