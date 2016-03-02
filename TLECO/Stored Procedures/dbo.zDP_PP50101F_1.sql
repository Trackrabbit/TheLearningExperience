SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP50101F_1] (@USERID_RS char(15), @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @JRNENTRY_RS int, @USERID_RE char(15), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @JRNENTRY_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, BCHSOURC, BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, OFFINDX, TRXAMNT, GLLINMSG, GLLINMS2, TRXDATE, ACCTTYPE, DSCRIPTN, CURNCYID, CURRNIDX, FUNCRIDX, ORIGAMT, DOCNUMBR, CUSTNMBR, CUSTNAME, DOCDATE, DEX_ROW_ID FROM .PP50101 ORDER BY USERID ASC, BCHSOURC ASC, BACHNUMB ASC, JRNENTRY ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, BCHSOURC, BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, OFFINDX, TRXAMNT, GLLINMSG, GLLINMS2, TRXDATE, ACCTTYPE, DSCRIPTN, CURNCYID, CURRNIDX, FUNCRIDX, ORIGAMT, DOCNUMBR, CUSTNMBR, CUSTNAME, DOCDATE, DEX_ROW_ID FROM .PP50101 WHERE USERID = @USERID_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY USERID ASC, BCHSOURC ASC, BACHNUMB ASC, JRNENTRY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, BCHSOURC, BACHNUMB, JRNENTRY, SQNCLINE, ACTINDX, OFFINDX, TRXAMNT, GLLINMSG, GLLINMS2, TRXDATE, ACCTTYPE, DSCRIPTN, CURNCYID, CURRNIDX, FUNCRIDX, ORIGAMT, DOCNUMBR, CUSTNMBR, CUSTNAME, DOCDATE, DEX_ROW_ID FROM .PP50101 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY USERID ASC, BCHSOURC ASC, BACHNUMB ASC, JRNENTRY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP50101F_1] TO [DYNGRP]
GO
