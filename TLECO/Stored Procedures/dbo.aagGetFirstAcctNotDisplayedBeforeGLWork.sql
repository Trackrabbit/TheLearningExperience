SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create    proc [dbo].[aagGetFirstAcctNotDisplayedBeforeGLWork]  @I_nHdrID int,  @O_nFirstAcctIndexNotDisplayed int=0 output,  @O_nFirstAcctDistIDNotDisplayed int=0 output,  @O_nFirstAcctSeqNumNotDisplayed int=0 output,  @O_nFirstAcctIndex int=0 output,  @O_nFirstAcctDistID int=0 output,  @O_nFirstAcctSeqNum int=0 output   AS  select @O_nFirstAcctDistIDNotDisplayed = aaGLWorkDistID,   @O_nFirstAcctIndexNotDisplayed = ACTINDX,  @O_nFirstAcctSeqNumNotDisplayed = SQNCLINE  from AAG10001 where aaGLWorkHdrID = @I_nHdrID and aaGLWorkDistID =  (select min(aaGLWorkDistID) from AAG10001 DistAlias   where aaGLWorkHdrID = @I_nHdrID  and aaWinWasOpen = 0   and aaBrowseType <> 0)  select @O_nFirstAcctDistID = aaGLWorkDistID,   @O_nFirstAcctIndex = ACTINDX,  @O_nFirstAcctSeqNum = SQNCLINE  from AAG10001 where aaGLWorkHdrID = @I_nHdrID and aaGLWorkDistID =  (select min(aaGLWorkDistID) from AAG10001 DistAlias   where aaGLWorkHdrID = @I_nHdrID   and aaBrowseType <> 0)    
GO
GRANT EXECUTE ON  [dbo].[aagGetFirstAcctNotDisplayedBeforeGLWork] TO [DYNGRP]
GO
