SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41300N_1] (@BS int, @Machine_ID char(15), @PRNSER smallint, @PRNTASK char(15), @LOCNCODE char(11), @PRNMODE smallint, @USERID char(15), @CMPANYID smallint, @Machine_ID_RS char(15), @PRNSER_RS smallint, @PRNTASK_RS char(15), @LOCNCODE_RS char(11), @PRNMODE_RS smallint, @USERID_RS char(15), @CMPANYID_RS smallint, @Machine_ID_RE char(15), @PRNSER_RE smallint, @PRNTASK_RE char(15), @LOCNCODE_RE char(11), @PRNMODE_RE smallint, @USERID_RE char(15), @CMPANYID_RE smallint) AS  set nocount on IF @Machine_ID_RS IS NULL BEGIN SELECT TOP 25  Machine_ID, PRNSER, PRNTASK, LOCNCODE, PRNMODE, USERID, CMPANYID, PRNCODE, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID FROM .STN41300 WHERE ( Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID = @USERID AND CMPANYID > @CMPANYID OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID > @USERID OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE > @PRNMODE OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE > @LOCNCODE OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK > @PRNTASK OR Machine_ID = @Machine_ID AND PRNSER > @PRNSER OR Machine_ID > @Machine_ID ) ORDER BY Machine_ID ASC, PRNSER ASC, PRNTASK ASC, LOCNCODE ASC, PRNMODE ASC, USERID ASC, CMPANYID ASC END ELSE IF @Machine_ID_RS = @Machine_ID_RE BEGIN SELECT TOP 25  Machine_ID, PRNSER, PRNTASK, LOCNCODE, PRNMODE, USERID, CMPANYID, PRNCODE, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID FROM .STN41300 WHERE Machine_ID = @Machine_ID_RS AND PRNSER BETWEEN @PRNSER_RS AND @PRNSER_RE AND PRNTASK BETWEEN @PRNTASK_RS AND @PRNTASK_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND PRNMODE BETWEEN @PRNMODE_RS AND @PRNMODE_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID = @USERID AND CMPANYID > @CMPANYID OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID > @USERID OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE > @PRNMODE OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE > @LOCNCODE OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK > @PRNTASK OR Machine_ID = @Machine_ID AND PRNSER > @PRNSER OR Machine_ID > @Machine_ID ) ORDER BY Machine_ID ASC, PRNSER ASC, PRNTASK ASC, LOCNCODE ASC, PRNMODE ASC, USERID ASC, CMPANYID ASC END ELSE BEGIN SELECT TOP 25  Machine_ID, PRNSER, PRNTASK, LOCNCODE, PRNMODE, USERID, CMPANYID, PRNCODE, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID FROM .STN41300 WHERE Machine_ID BETWEEN @Machine_ID_RS AND @Machine_ID_RE AND PRNSER BETWEEN @PRNSER_RS AND @PRNSER_RE AND PRNTASK BETWEEN @PRNTASK_RS AND @PRNTASK_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND PRNMODE BETWEEN @PRNMODE_RS AND @PRNMODE_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID = @USERID AND CMPANYID > @CMPANYID OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID > @USERID OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE > @PRNMODE OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE > @LOCNCODE OR Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK > @PRNTASK OR Machine_ID = @Machine_ID AND PRNSER > @PRNSER OR Machine_ID > @Machine_ID ) ORDER BY Machine_ID ASC, PRNSER ASC, PRNTASK ASC, LOCNCODE ASC, PRNMODE ASC, USERID ASC, CMPANYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41300N_1] TO [DYNGRP]
GO
