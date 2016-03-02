SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00325N_5] (@BS int, @USERID char(15), @MKDTOPST tinyint, @ITEMNMBR char(31), @DEX_ROW_ID int, @USERID_RS char(15), @MKDTOPST_RS tinyint, @ITEMNMBR_RS char(31), @USERID_RE char(15), @MKDTOPST_RE tinyint, @ITEMNMBR_RE char(31)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, CUSTNMBR, ADRSCODE, TECHID, OFFID, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, CONSTS, CONTNBR, RANGESET, Status_Bar_String, DEX_ROW_ID FROM .SVC00325 WHERE ( USERID = @USERID AND MKDTOPST = @MKDTOPST AND ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND ITEMNMBR > @ITEMNMBR OR USERID = @USERID AND MKDTOPST > @MKDTOPST OR USERID > @USERID ) ORDER BY USERID ASC, MKDTOPST ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, CUSTNMBR, ADRSCODE, TECHID, OFFID, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, CONSTS, CONTNBR, RANGESET, Status_Bar_String, DEX_ROW_ID FROM .SVC00325 WHERE USERID = @USERID_RS AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( USERID = @USERID AND MKDTOPST = @MKDTOPST AND ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND ITEMNMBR > @ITEMNMBR OR USERID = @USERID AND MKDTOPST > @MKDTOPST OR USERID > @USERID ) ORDER BY USERID ASC, MKDTOPST ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, CUSTNMBR, ADRSCODE, TECHID, OFFID, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, CONSTS, CONTNBR, RANGESET, Status_Bar_String, DEX_ROW_ID FROM .SVC00325 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND MKDTOPST BETWEEN @MKDTOPST_RS AND @MKDTOPST_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( USERID = @USERID AND MKDTOPST = @MKDTOPST AND ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND MKDTOPST = @MKDTOPST AND ITEMNMBR > @ITEMNMBR OR USERID = @USERID AND MKDTOPST > @MKDTOPST OR USERID > @USERID ) ORDER BY USERID ASC, MKDTOPST ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00325N_5] TO [DYNGRP]
GO
