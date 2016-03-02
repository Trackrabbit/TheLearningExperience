SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40100SI] (@SETUPKEY smallint, @USCATDSC_1 char(15), @USCATDSC_2 char(15), @USCATDSC_3 char(15), @USCATDSC_4 char(15), @USCATDSC_5 char(15), @USCATDSC_6 char(15), @DCDCRADJ tinyint, @ACSGFLOC smallint, @MAINLOCN char(11), @DECPLCUR smallint, @DECPLQTY smallint, @NXADJDOC char(21), @TXTRDNUM char(21), @NXTVDNUM char(21), @NXPRDNUM char(21), @ALADJOVR tinyint, @AVAROVRD tinyint, @ATRSOVRD tinyint, @ATPSTVRNC tinyint, @ENABLEMULTIBIN tinyint, @ENPICKSHORTTSK tinyint, @USERID char(15), @DISABLEAVGPERPADJ tinyint, @DISABLEPERPADJ tinyint, @ALLEXPLOTSIV tinyint, @ALLEXPLOTSIVPASS char(11), @ALLEXPLOTSOTHER tinyint, @ALLEXPLOTOTHERPASS char(11), @USEEXISTINGSNLOTS tinyint, @ASSIGNLOTNUMBY smallint, @NXTSPNUM char(15), @VIALOCN char(11), @Next_Bin_XFer_Doc_Number char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV40100 (SETUPKEY, USCATDSC_1, USCATDSC_2, USCATDSC_3, USCATDSC_4, USCATDSC_5, USCATDSC_6, DCDCRADJ, ACSGFLOC, MAINLOCN, DECPLCUR, DECPLQTY, NXADJDOC, TXTRDNUM, NXTVDNUM, NXPRDNUM, ALADJOVR, AVAROVRD, ATRSOVRD, ATPSTVRNC, ENABLEMULTIBIN, ENPICKSHORTTSK, USERID, DISABLEAVGPERPADJ, DISABLEPERPADJ, ALLEXPLOTSIV, ALLEXPLOTSIVPASS, ALLEXPLOTSOTHER, ALLEXPLOTOTHERPASS, USEEXISTINGSNLOTS, ASSIGNLOTNUMBY, NXTSPNUM, VIALOCN, Next_Bin_XFer_Doc_Number) VALUES ( @SETUPKEY, @USCATDSC_1, @USCATDSC_2, @USCATDSC_3, @USCATDSC_4, @USCATDSC_5, @USCATDSC_6, @DCDCRADJ, @ACSGFLOC, @MAINLOCN, @DECPLCUR, @DECPLQTY, @NXADJDOC, @TXTRDNUM, @NXTVDNUM, @NXPRDNUM, @ALADJOVR, @AVAROVRD, @ATRSOVRD, @ATPSTVRNC, @ENABLEMULTIBIN, @ENPICKSHORTTSK, @USERID, @DISABLEAVGPERPADJ, @DISABLEPERPADJ, @ALLEXPLOTSIV, @ALLEXPLOTSIVPASS, @ALLEXPLOTSOTHER, @ALLEXPLOTOTHERPASS, @USEEXISTINGSNLOTS, @ASSIGNLOTNUMBY, @NXTSPNUM, @VIALOCN, @Next_Bin_XFer_Doc_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40100SI] TO [DYNGRP]
GO