SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07100L_1] (@SVC_Issue_Number_RS int, @SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @SVC_Issue_Number_RE int, @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11)) AS  set nocount on IF @SVC_Issue_Number_RS IS NULL BEGIN SELECT TOP 25  SVC_Issue_Number, SRVRECTYPE, CALLNBR, SVC_CBR_Number, SVC_Action, SVC_Template_Call_Number, DEX_ROW_ID FROM .SVC07100 ORDER BY SVC_Issue_Number DESC, SRVRECTYPE DESC, CALLNBR DESC END ELSE IF @SVC_Issue_Number_RS = @SVC_Issue_Number_RE BEGIN SELECT TOP 25  SVC_Issue_Number, SRVRECTYPE, CALLNBR, SVC_CBR_Number, SVC_Action, SVC_Template_Call_Number, DEX_ROW_ID FROM .SVC07100 WHERE SVC_Issue_Number = @SVC_Issue_Number_RS AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY SVC_Issue_Number DESC, SRVRECTYPE DESC, CALLNBR DESC END ELSE BEGIN SELECT TOP 25  SVC_Issue_Number, SRVRECTYPE, CALLNBR, SVC_CBR_Number, SVC_Action, SVC_Template_Call_Number, DEX_ROW_ID FROM .SVC07100 WHERE SVC_Issue_Number BETWEEN @SVC_Issue_Number_RS AND @SVC_Issue_Number_RE AND SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE ORDER BY SVC_Issue_Number DESC, SRVRECTYPE DESC, CALLNBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07100L_1] TO [DYNGRP]
GO
