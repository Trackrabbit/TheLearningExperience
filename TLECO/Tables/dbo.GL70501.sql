CREATE TABLE [dbo].[GL70501]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[SEQNUMBR] [int] NOT NULL,
[REPORTID] [smallint] NOT NULL,
[FINRPTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTUDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRDF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STGENINT1] [smallint] NOT NULL,
[ENDGENINT1] [smallint] NOT NULL,
[STGENINT2] [smallint] NOT NULL,
[ENDGENINT2] [smallint] NOT NULL,
[STRTNGDT] [datetime] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[STTCATEG] [smallint] NOT NULL,
[ENDCATEG] [smallint] NOT NULL,
[STTCATNM] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCATNM] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTJRNL] [int] NOT NULL,
[ENDJRNAL] [int] NOT NULL,
[STRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTCMTRXNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCMTRXNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSRCEDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSRCDC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACDSC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDACDSC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBDBSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENBDBSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STBDBSDS] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENBDBSDS] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCHBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCHBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDSCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSEGID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDSEGID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENCNTNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMASTID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENMASTID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMASTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENMASTNM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[CBZBNA] [tinyint] NOT NULL,
[Accounts_Included] [smallint] NOT NULL,
[Start_Position_String] [char] (89) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[End_Position_String] [char] (89) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTXRATE] [numeric] (19, 7) NOT NULL,
[RPRTCLMD] [smallint] NOT NULL,
[PRTCURIN] [smallint] NOT NULL,
[INCMCINF] [tinyint] NOT NULL,
[STCURRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCURID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UseLedgersForAcctBalance] [binary] (4) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL70501] ADD CONSTRAINT [CK__GL70501__ENDINGD__0B3756C2] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[GL70501] ADD CONSTRAINT [CK__GL70501__STRTNGD__0A433289] CHECK ((datepart(hour,[STRTNGDT])=(0) AND datepart(minute,[STRTNGDT])=(0) AND datepart(second,[STRTNGDT])=(0) AND datepart(millisecond,[STRTNGDT])=(0)))
GO
ALTER TABLE [dbo].[GL70501] ADD CONSTRAINT [PKGL70501] PRIMARY KEY NONCLUSTERED  ([USERID], [RPTGRIND], [RTPACHIN], [RTGRSBIN], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL70501] ON [dbo].[GL70501] ([USERID], [RPTGRIND], [RTPACHIN], [REPORTID], [RTGRSBIN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[IFFILXST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[FILEXPNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[EXPTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[ASKECHTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRNTOFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL70501].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[FINRPTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STTUDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENUSRDF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[STGENINT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[ENDGENINT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[STGENINT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[ENDGENINT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL70501].[STRTNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL70501].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[STTCATEG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[ENDCATEG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STTCATNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDCATNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[STRTJRNL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[ENDJRNAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STRTCMTRXNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDCMTRXNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[SSRCEDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDSRCDC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STTACDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDACDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STBDBSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENBDBSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STBDBSDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENBDBSDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STCHBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENCHBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STRTDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STTSEGID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDSEGID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENCNTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STMASTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENMASTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STMASTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENMASTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[CBINACTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PSTNGACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[UNITACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[RPRTSHOW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRRPTFOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[PRVYRCMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[RPTDETAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_31]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_32]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_33]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_34]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_35]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_36]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_37]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_38]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_39]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_40]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INDIVDUL_41]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRNTDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRZROBAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[CLCRATIO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INCLGNDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[GLSTTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[GLENTKDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRUNTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STACCNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STACCNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STACCNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STACCNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[EDGACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[EDGACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[EDGACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[EDGACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[SEGSRTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[RANGEBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[CBZBNA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[Accounts_Included]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[Start_Position_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[End_Position_String]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL70501].[RPTXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[RPRTCLMD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[PRTCURIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[INCMCINF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[STCURRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL70501].[ENDCURID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL70501].[UseLedgersForAcctBalance]'
GO
GRANT REFERENCES ON  [dbo].[GL70501] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL70501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL70501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL70501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL70501] TO [DYNGRP]
GO
