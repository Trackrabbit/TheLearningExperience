SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_AF50300SI] (@USERID char(15), @REPORTID smallint, @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @COLNUM smallint, @CLTKNCNT smallint, @COLTYPE smallint, @COLSIZE smallint, @COLOFMRK_1 smallint, @COLOFMRK_2 smallint, @COLOFMRK_3 smallint, @COLOFMRK_4 smallint, @COLOMCNT smallint, @HIDEFLAG smallint, @TEXTVALU char(51), @STPERIOD smallint, @ENDPEROD smallint, @SEGFROM_1 char(5), @SEGFROM_2 char(5), @SEGFROM_3 char(3), @SEGFROM_4 char(3), @SEGTO_1 char(5), @SEGTO_2 char(5), @SEGTO_3 char(3), @SEGTO_4 char(3), @AMNTFROM smallint, @HISTYEAR smallint, @BUDID char(15), @PRTSIGN smallint, @PRTCOMMA smallint, @PRTPCENT smallint, @PRTTEXT smallint, @ROUNDOPT smallint, @HEADALIN smallint, @HDFTFMLY smallint, @HDFTSIZE smallint, @HEDSTYLE_1 smallint, @HEDSTYLE_2 smallint, @HEDSTYLE_3 smallint, @HEDSTYLE_4 smallint, @HEDSTYLE_5 smallint, @HEDSTYLE_6 smallint, @HEADTYPE_1 smallint, @HEADTYPE_2 smallint, @HEADTYPE_3 smallint, @HEADTYPE_4 smallint, @HEADTYPE_5 smallint, @HEADTYPE_6 smallint, @HEDFRMAT_1 smallint, @HEDFRMAT_2 smallint, @HEDFRMAT_3 smallint, @HEDFRMAT_4 smallint, @HEDFRMAT_5 smallint, @HEDFRMAT_6 smallint, @HEADOPT_1 smallint, @HEADOPT_2 smallint, @HEADOPT_3 smallint, @HEADOPT_4 smallint, @HEADOPT_5 smallint, @HEADOPT_6 smallint, @HEADOPT2_1 smallint, @HEADOPT2_2 smallint, @HEADOPT2_3 smallint, @HEADOPT2_4 smallint, @HEADOPT2_5 smallint, @HEADOPT2_6 smallint, @COLHDNG_1 char(51), @COLHDNG_2 char(51), @COLHDNG_3 char(51), @COLHDNG_4 char(51), @COLHDNG_5 char(51), @COLHDNG_6 char(51), @COLHDNG2_1 char(51), @COLHDNG2_2 char(51), @COLHDNG2_3 char(51), @COLHDNG2_4 char(51), @COLHDNG2_5 char(51), @COLHDNG2_6 char(51), @ALGNOFST smallint, @COLEXPER tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .AF50300 (USERID, REPORTID, RPTGRIND, RTPACHIN, RTGRSBIN, COLNUM, CLTKNCNT, COLTYPE, COLSIZE, COLOFMRK_1, COLOFMRK_2, COLOFMRK_3, COLOFMRK_4, COLOMCNT, HIDEFLAG, TEXTVALU, STPERIOD, ENDPEROD, SEGFROM_1, SEGFROM_2, SEGFROM_3, SEGFROM_4, SEGTO_1, SEGTO_2, SEGTO_3, SEGTO_4, AMNTFROM, HISTYEAR, BUDID, PRTSIGN, PRTCOMMA, PRTPCENT, PRTTEXT, ROUNDOPT, HEADALIN, HDFTFMLY, HDFTSIZE, HEDSTYLE_1, HEDSTYLE_2, HEDSTYLE_3, HEDSTYLE_4, HEDSTYLE_5, HEDSTYLE_6, HEADTYPE_1, HEADTYPE_2, HEADTYPE_3, HEADTYPE_4, HEADTYPE_5, HEADTYPE_6, HEDFRMAT_1, HEDFRMAT_2, HEDFRMAT_3, HEDFRMAT_4, HEDFRMAT_5, HEDFRMAT_6, HEADOPT_1, HEADOPT_2, HEADOPT_3, HEADOPT_4, HEADOPT_5, HEADOPT_6, HEADOPT2_1, HEADOPT2_2, HEADOPT2_3, HEADOPT2_4, HEADOPT2_5, HEADOPT2_6, COLHDNG_1, COLHDNG_2, COLHDNG_3, COLHDNG_4, COLHDNG_5, COLHDNG_6, COLHDNG2_1, COLHDNG2_2, COLHDNG2_3, COLHDNG2_4, COLHDNG2_5, COLHDNG2_6, ALGNOFST, COLEXPER, NOTEINDX) VALUES ( @USERID, @REPORTID, @RPTGRIND, @RTPACHIN, @RTGRSBIN, @COLNUM, @CLTKNCNT, @COLTYPE, @COLSIZE, @COLOFMRK_1, @COLOFMRK_2, @COLOFMRK_3, @COLOFMRK_4, @COLOMCNT, @HIDEFLAG, @TEXTVALU, @STPERIOD, @ENDPEROD, @SEGFROM_1, @SEGFROM_2, @SEGFROM_3, @SEGFROM_4, @SEGTO_1, @SEGTO_2, @SEGTO_3, @SEGTO_4, @AMNTFROM, @HISTYEAR, @BUDID, @PRTSIGN, @PRTCOMMA, @PRTPCENT, @PRTTEXT, @ROUNDOPT, @HEADALIN, @HDFTFMLY, @HDFTSIZE, @HEDSTYLE_1, @HEDSTYLE_2, @HEDSTYLE_3, @HEDSTYLE_4, @HEDSTYLE_5, @HEDSTYLE_6, @HEADTYPE_1, @HEADTYPE_2, @HEADTYPE_3, @HEADTYPE_4, @HEADTYPE_5, @HEADTYPE_6, @HEDFRMAT_1, @HEDFRMAT_2, @HEDFRMAT_3, @HEDFRMAT_4, @HEDFRMAT_5, @HEDFRMAT_6, @HEADOPT_1, @HEADOPT_2, @HEADOPT_3, @HEADOPT_4, @HEADOPT_5, @HEADOPT_6, @HEADOPT2_1, @HEADOPT2_2, @HEADOPT2_3, @HEADOPT2_4, @HEADOPT2_5, @HEADOPT2_6, @COLHDNG_1, @COLHDNG_2, @COLHDNG_3, @COLHDNG_4, @COLHDNG_5, @COLHDNG_6, @COLHDNG2_1, @COLHDNG2_2, @COLHDNG2_3, @COLHDNG2_4, @COLHDNG2_5, @COLHDNG2_6, @ALGNOFST, @COLEXPER, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_AF50300SI] TO [DYNGRP]
GO
