SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00675N_2] (@BS int, @MKDTOPST tinyint, @CMXFRNUM char(21), @DEX_ROW_ID int, @MKDTOPST_RS tinyint, @CMXFRNUM_RS char(21), @MKDTOPST_RE tinyint, @CMXFRNUM_RE char(21)) AS  set nocount on IF @MKDTOPST_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, CNTTYPE, STRTDATE, ENDDATE, ITEMNMBR, SERLNMBR, EQUIPID, DSCRIPTN, QUANTITY, Effective_Date, CMXFRNUM, To_Customer_Number, ADRSCODE, PRICSHED, CNTPRCOVR, TOTAL, SVC_Monthly_Price, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, RETNAGAM, RTNBILLD, NBRCAL, ACTCAL, BLKTIM, VALTIM, MKDTOPST, POSTDATE, DEX_ROW_ID FROM .SVC00675 WHERE ( MKDTOPST = @MKDTOPST AND CMXFRNUM = @CMXFRNUM AND DEX_ROW_ID > @DEX_ROW_ID OR MKDTOPST = @MKDTOPST AND CMXFRNUM > @CMXFRNUM OR MKDTOPST > @MKDTOPST ) ORDER BY MKDTOPST ASC, CMXFRNUM ASC, DEX_ROW_ID ASC END ELSE IF @MKDTOPST_RS = @MKDTOPST_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, CNTTYPE, STRTDATE, ENDDATE, ITEMNMBR, SERLNMBR, EQUIPID, DSCRIPTN, QUANTITY, Effective_Date, CMXFRNUM, To_Customer_Number, ADRSCODE, PRICSHED, CNTPRCOVR, TOTAL, SVC_Monthly_Price, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, RETNAGAM, RTNBILLD, NBRCAL, ACTCAL, BLKTIM, VALTIM, MKDTOPST, POSTDATE, DEX_ROW_ID FROM .SVC00675 WHERE MKDTOPST = @MKDTOPST_RS AND CMXFRNUM BETWEEN @CMXFRNUM_RS AND @CMXFRNUM_RE AND ( MKDTOPST = @MKDTOPST AND CMXFRNUM = @CMXFRNUM AND DEX_ROW_ID > @DEX_ROW_ID OR MKDTOPST = @MKDTOPST AND CMXFRNUM > @CMXFRNUM OR MKDTOPST > @MKDTOPST ) ORDER BY MKDTOPST ASC, CMXFRNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, CNTTYPE, STRTDATE, ENDDATE, ITEMNMBR, SERLNMBR, EQUIPID, DSCRIPTN, QUANTITY, Effective_Date, CMXFRNUM, To_Customer_Number, ADRSCODE, PRICSHED, CNTPRCOVR, TOTAL, SVC_Monthly_Price, DEDCAMNT_1, DEDCAMNT_2, DEDCAMNT_3, DEDCAMNT_4, DEDCAMNT_5, RETNAGAM, RTNBILLD, NBRCAL, ACTCAL, BLKTIM, VALTIM, MKDTOPST, POSTDATE, DEX_ROW_ID FROM .SVC00675 WHERE MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND CMXFRNUM BETWEEN @CMXFRNUM_RS AND @CMXFRNUM_RE AND ( MKDTOPST = @MKDTOPST AND CMXFRNUM = @CMXFRNUM AND DEX_ROW_ID > @DEX_ROW_ID OR MKDTOPST = @MKDTOPST AND CMXFRNUM > @CMXFRNUM OR MKDTOPST > @MKDTOPST ) ORDER BY MKDTOPST ASC, CMXFRNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00675N_2] TO [DYNGRP]
GO
