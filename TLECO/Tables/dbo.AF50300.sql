CREATE TABLE [dbo].[AF50300]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REPORTID] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[COLNUM] [smallint] NOT NULL,
[CLTKNCNT] [smallint] NOT NULL,
[COLTYPE] [smallint] NOT NULL,
[COLSIZE] [smallint] NOT NULL,
[COLOFMRK_1] [smallint] NOT NULL,
[COLOFMRK_2] [smallint] NOT NULL,
[COLOFMRK_3] [smallint] NOT NULL,
[COLOFMRK_4] [smallint] NOT NULL,
[COLOMCNT] [smallint] NOT NULL,
[HIDEFLAG] [smallint] NOT NULL,
[TEXTVALU] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STPERIOD] [smallint] NOT NULL,
[ENDPEROD] [smallint] NOT NULL,
[SEGFROM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGFROM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGFROM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGFROM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGTO_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGTO_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGTO_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEGTO_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AMNTFROM] [smallint] NOT NULL,
[HISTYEAR] [smallint] NOT NULL,
[BUDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTSIGN] [smallint] NOT NULL,
[PRTCOMMA] [smallint] NOT NULL,
[PRTPCENT] [smallint] NOT NULL,
[PRTTEXT] [smallint] NOT NULL,
[ROUNDOPT] [smallint] NOT NULL,
[HEADALIN] [smallint] NOT NULL,
[HDFTFMLY] [smallint] NOT NULL,
[HDFTSIZE] [smallint] NOT NULL,
[HEDSTYLE_1] [smallint] NOT NULL,
[HEDSTYLE_2] [smallint] NOT NULL,
[HEDSTYLE_3] [smallint] NOT NULL,
[HEDSTYLE_4] [smallint] NOT NULL,
[HEDSTYLE_5] [smallint] NOT NULL,
[HEDSTYLE_6] [smallint] NOT NULL,
[HEADTYPE_1] [smallint] NOT NULL,
[HEADTYPE_2] [smallint] NOT NULL,
[HEADTYPE_3] [smallint] NOT NULL,
[HEADTYPE_4] [smallint] NOT NULL,
[HEADTYPE_5] [smallint] NOT NULL,
[HEADTYPE_6] [smallint] NOT NULL,
[HEDFRMAT_1] [smallint] NOT NULL,
[HEDFRMAT_2] [smallint] NOT NULL,
[HEDFRMAT_3] [smallint] NOT NULL,
[HEDFRMAT_4] [smallint] NOT NULL,
[HEDFRMAT_5] [smallint] NOT NULL,
[HEDFRMAT_6] [smallint] NOT NULL,
[HEADOPT_1] [smallint] NOT NULL,
[HEADOPT_2] [smallint] NOT NULL,
[HEADOPT_3] [smallint] NOT NULL,
[HEADOPT_4] [smallint] NOT NULL,
[HEADOPT_5] [smallint] NOT NULL,
[HEADOPT_6] [smallint] NOT NULL,
[HEADOPT2_1] [smallint] NOT NULL,
[HEADOPT2_2] [smallint] NOT NULL,
[HEADOPT2_3] [smallint] NOT NULL,
[HEADOPT2_4] [smallint] NOT NULL,
[HEADOPT2_5] [smallint] NOT NULL,
[HEADOPT2_6] [smallint] NOT NULL,
[COLHDNG_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG_5] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG_6] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG2_1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG2_2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG2_3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG2_4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG2_5] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COLHDNG2_6] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ALGNOFST] [smallint] NOT NULL,
[COLEXPER] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AF50300] ADD CONSTRAINT [PKAF50300] PRIMARY KEY NONCLUSTERED  ([USERID], [REPORTID], [RPTGRIND], [RTPACHIN], [RTGRSBIN], [COLNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[REPORTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50300].[RTGRSBIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[CLTKNCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLSIZE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLOFMRK_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLOFMRK_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLOFMRK_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLOFMRK_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLOMCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HIDEFLAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[TEXTVALU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[STPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[ENDPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGFROM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGFROM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGFROM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGFROM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGTO_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGTO_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGTO_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[SEGTO_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[AMNTFROM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HISTYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[BUDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[PRTSIGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[PRTCOMMA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[PRTPCENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[PRTTEXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[ROUNDOPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADALIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HDFTFMLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HDFTSIZE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDSTYLE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDSTYLE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDSTYLE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDSTYLE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDSTYLE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDSTYLE_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADTYPE_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADTYPE_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADTYPE_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADTYPE_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADTYPE_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADTYPE_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDFRMAT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDFRMAT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDFRMAT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDFRMAT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDFRMAT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEDFRMAT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[HEADOPT2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG2_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG2_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG2_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG2_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG2_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AF50300].[COLHDNG2_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[ALGNOFST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AF50300].[COLEXPER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AF50300].[NOTEINDX]'
GO
GRANT REFERENCES ON  [dbo].[AF50300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AF50300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AF50300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AF50300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AF50300] TO [DYNGRP]
GO
