SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_AF50300SS_1] (@USERID char(15), @REPORTID smallint, @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @COLNUM smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, REPORTID, RPTGRIND, RTPACHIN, RTGRSBIN, COLNUM, CLTKNCNT, COLTYPE, COLSIZE, COLOFMRK_1, COLOFMRK_2, COLOFMRK_3, COLOFMRK_4, COLOMCNT, HIDEFLAG, TEXTVALU, STPERIOD, ENDPEROD, SEGFROM_1, SEGFROM_2, SEGFROM_3, SEGFROM_4, SEGTO_1, SEGTO_2, SEGTO_3, SEGTO_4, AMNTFROM, HISTYEAR, BUDID, PRTSIGN, PRTCOMMA, PRTPCENT, PRTTEXT, ROUNDOPT, HEADALIN, HDFTFMLY, HDFTSIZE, HEDSTYLE_1, HEDSTYLE_2, HEDSTYLE_3, HEDSTYLE_4, HEDSTYLE_5, HEDSTYLE_6, HEADTYPE_1, HEADTYPE_2, HEADTYPE_3, HEADTYPE_4, HEADTYPE_5, HEADTYPE_6, HEDFRMAT_1, HEDFRMAT_2, HEDFRMAT_3, HEDFRMAT_4, HEDFRMAT_5, HEDFRMAT_6, HEADOPT_1, HEADOPT_2, HEADOPT_3, HEADOPT_4, HEADOPT_5, HEADOPT_6, HEADOPT2_1, HEADOPT2_2, HEADOPT2_3, HEADOPT2_4, HEADOPT2_5, HEADOPT2_6, COLHDNG_1, COLHDNG_2, COLHDNG_3, COLHDNG_4, COLHDNG_5, COLHDNG_6, COLHDNG2_1, COLHDNG2_2, COLHDNG2_3, COLHDNG2_4, COLHDNG2_5, COLHDNG2_6, ALGNOFST, COLEXPER, NOTEINDX, DEX_ROW_ID FROM .AF50300 WHERE USERID = @USERID AND REPORTID = @REPORTID AND RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN AND COLNUM = @COLNUM ORDER BY USERID ASC, REPORTID ASC, RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC, COLNUM ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50300SS_1] TO [DYNGRP]
GO