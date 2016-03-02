SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07511N_1] (@BS int, @TECHID char(11), @SVC_Form_ID char(15), @LNSEQNBR numeric(19,5), @TECHID_RS char(11), @SVC_Form_ID_RS char(15), @LNSEQNBR_RS numeric(19,5), @TECHID_RE char(11), @SVC_Form_ID_RE char(15), @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  TECHID, SVC_Form_ID, LNSEQNBR, ITEMNMBR, UOFM, QUANTITY, DATE1, Work_Type, DSCRIPTN, UNITPRCE, AMTBILLD, SVC_Receipt, CALLNBR, LNITMSEQ, DEX_ROW_ID, TXTFIELD FROM .SVC07511 WHERE ( TECHID = @TECHID AND SVC_Form_ID = @SVC_Form_ID AND LNSEQNBR > @LNSEQNBR OR TECHID = @TECHID AND SVC_Form_ID > @SVC_Form_ID OR TECHID > @TECHID ) ORDER BY TECHID ASC, SVC_Form_ID ASC, LNSEQNBR ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  TECHID, SVC_Form_ID, LNSEQNBR, ITEMNMBR, UOFM, QUANTITY, DATE1, Work_Type, DSCRIPTN, UNITPRCE, AMTBILLD, SVC_Receipt, CALLNBR, LNITMSEQ, DEX_ROW_ID, TXTFIELD FROM .SVC07511 WHERE TECHID = @TECHID_RS AND SVC_Form_ID BETWEEN @SVC_Form_ID_RS AND @SVC_Form_ID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( TECHID = @TECHID AND SVC_Form_ID = @SVC_Form_ID AND LNSEQNBR > @LNSEQNBR OR TECHID = @TECHID AND SVC_Form_ID > @SVC_Form_ID OR TECHID > @TECHID ) ORDER BY TECHID ASC, SVC_Form_ID ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  TECHID, SVC_Form_ID, LNSEQNBR, ITEMNMBR, UOFM, QUANTITY, DATE1, Work_Type, DSCRIPTN, UNITPRCE, AMTBILLD, SVC_Receipt, CALLNBR, LNITMSEQ, DEX_ROW_ID, TXTFIELD FROM .SVC07511 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND SVC_Form_ID BETWEEN @SVC_Form_ID_RS AND @SVC_Form_ID_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( TECHID = @TECHID AND SVC_Form_ID = @SVC_Form_ID AND LNSEQNBR > @LNSEQNBR OR TECHID = @TECHID AND SVC_Form_ID > @SVC_Form_ID OR TECHID > @TECHID ) ORDER BY TECHID ASC, SVC_Form_ID ASC, LNSEQNBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07511N_1] TO [DYNGRP]
GO
