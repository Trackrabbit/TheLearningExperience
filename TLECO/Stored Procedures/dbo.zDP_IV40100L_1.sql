SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40100L_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, USCATDSC_1, USCATDSC_2, USCATDSC_3, USCATDSC_4, USCATDSC_5, USCATDSC_6, DCDCRADJ, ACSGFLOC, MAINLOCN, DECPLCUR, DECPLQTY, NXADJDOC, TXTRDNUM, NXTVDNUM, NXPRDNUM, ALADJOVR, AVAROVRD, ATRSOVRD, ATPSTVRNC, ENABLEMULTIBIN, ENPICKSHORTTSK, USERID, DISABLEAVGPERPADJ, DISABLEPERPADJ, ALLEXPLOTSIV, ALLEXPLOTSIVPASS, ALLEXPLOTSOTHER, ALLEXPLOTOTHERPASS, USEEXISTINGSNLOTS, ASSIGNLOTNUMBY, NXTSPNUM, VIALOCN, Next_Bin_XFer_Doc_Number, DEX_ROW_ID FROM .IV40100 ORDER BY SETUPKEY DESC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, USCATDSC_1, USCATDSC_2, USCATDSC_3, USCATDSC_4, USCATDSC_5, USCATDSC_6, DCDCRADJ, ACSGFLOC, MAINLOCN, DECPLCUR, DECPLQTY, NXADJDOC, TXTRDNUM, NXTVDNUM, NXPRDNUM, ALADJOVR, AVAROVRD, ATRSOVRD, ATPSTVRNC, ENABLEMULTIBIN, ENPICKSHORTTSK, USERID, DISABLEAVGPERPADJ, DISABLEPERPADJ, ALLEXPLOTSIV, ALLEXPLOTSIVPASS, ALLEXPLOTSOTHER, ALLEXPLOTOTHERPASS, USEEXISTINGSNLOTS, ASSIGNLOTNUMBY, NXTSPNUM, VIALOCN, Next_Bin_XFer_Doc_Number, DEX_ROW_ID FROM .IV40100 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY DESC END ELSE BEGIN SELECT TOP 25  SETUPKEY, USCATDSC_1, USCATDSC_2, USCATDSC_3, USCATDSC_4, USCATDSC_5, USCATDSC_6, DCDCRADJ, ACSGFLOC, MAINLOCN, DECPLCUR, DECPLQTY, NXADJDOC, TXTRDNUM, NXTVDNUM, NXPRDNUM, ALADJOVR, AVAROVRD, ATRSOVRD, ATPSTVRNC, ENABLEMULTIBIN, ENPICKSHORTTSK, USERID, DISABLEAVGPERPADJ, DISABLEPERPADJ, ALLEXPLOTSIV, ALLEXPLOTSIVPASS, ALLEXPLOTSOTHER, ALLEXPLOTOTHERPASS, USEEXISTINGSNLOTS, ASSIGNLOTNUMBY, NXTSPNUM, VIALOCN, Next_Bin_XFer_Doc_Number, DEX_ROW_ID FROM .IV40100 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40100L_1] TO [DYNGRP]
GO