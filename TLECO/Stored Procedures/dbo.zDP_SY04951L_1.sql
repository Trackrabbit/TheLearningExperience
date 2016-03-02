SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04951L_1] (@PRODID_RS smallint, @RTGRSBIN_RS numeric(19,5), @RPRTNAME_RS char(31), @PRODID_RE smallint, @RTGRSBIN_RE numeric(19,5), @RPRTNAME_RE char(31)) AS  set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, RTGRSBIN, RPRTNAME, EmailMessageSubject, DEX_ROW_ID, EmailMessageBody FROM .SY04951 ORDER BY PRODID DESC, RTGRSBIN DESC, RPRTNAME DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, RTGRSBIN, RPRTNAME, EmailMessageSubject, DEX_ROW_ID, EmailMessageBody FROM .SY04951 WHERE PRODID = @PRODID_RS AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND RPRTNAME BETWEEN @RPRTNAME_RS AND @RPRTNAME_RE ORDER BY PRODID DESC, RTGRSBIN DESC, RPRTNAME DESC END ELSE BEGIN SELECT TOP 25  PRODID, RTGRSBIN, RPRTNAME, EmailMessageSubject, DEX_ROW_ID, EmailMessageBody FROM .SY04951 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND RPRTNAME BETWEEN @RPRTNAME_RS AND @RPRTNAME_RE ORDER BY PRODID DESC, RTGRSBIN DESC, RPRTNAME DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04951L_1] TO [DYNGRP]
GO
