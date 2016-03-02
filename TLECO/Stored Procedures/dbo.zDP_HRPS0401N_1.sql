SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPS0401N_1] (@BS int, @PYSTPTBLID char(15), @Effective_Date datetime, @Step smallint, @PYSTPTBLID_RS char(15), @Effective_Date_RS datetime, @Step_RS smallint, @PYSTPTBLID_RE char(15), @Effective_Date_RE datetime, @Step_RE smallint) AS  set nocount on IF @PYSTPTBLID_RS IS NULL BEGIN SELECT TOP 25  PYSTPTBLID, Effective_Date, Step, Months_In_Step_Start, Months_In_Step_End, PAYRTAMT, DEX_ROW_ID FROM .HRPS0401 WHERE ( PYSTPTBLID = @PYSTPTBLID AND Effective_Date = @Effective_Date AND Step > @Step OR PYSTPTBLID = @PYSTPTBLID AND Effective_Date > @Effective_Date OR PYSTPTBLID > @PYSTPTBLID ) ORDER BY PYSTPTBLID ASC, Effective_Date ASC, Step ASC END ELSE IF @PYSTPTBLID_RS = @PYSTPTBLID_RE BEGIN SELECT TOP 25  PYSTPTBLID, Effective_Date, Step, Months_In_Step_Start, Months_In_Step_End, PAYRTAMT, DEX_ROW_ID FROM .HRPS0401 WHERE PYSTPTBLID = @PYSTPTBLID_RS AND Effective_Date BETWEEN @Effective_Date_RS AND @Effective_Date_RE AND Step BETWEEN @Step_RS AND @Step_RE AND ( PYSTPTBLID = @PYSTPTBLID AND Effective_Date = @Effective_Date AND Step > @Step OR PYSTPTBLID = @PYSTPTBLID AND Effective_Date > @Effective_Date OR PYSTPTBLID > @PYSTPTBLID ) ORDER BY PYSTPTBLID ASC, Effective_Date ASC, Step ASC END ELSE BEGIN SELECT TOP 25  PYSTPTBLID, Effective_Date, Step, Months_In_Step_Start, Months_In_Step_End, PAYRTAMT, DEX_ROW_ID FROM .HRPS0401 WHERE PYSTPTBLID BETWEEN @PYSTPTBLID_RS AND @PYSTPTBLID_RE AND Effective_Date BETWEEN @Effective_Date_RS AND @Effective_Date_RE AND Step BETWEEN @Step_RS AND @Step_RE AND ( PYSTPTBLID = @PYSTPTBLID AND Effective_Date = @Effective_Date AND Step > @Step OR PYSTPTBLID = @PYSTPTBLID AND Effective_Date > @Effective_Date OR PYSTPTBLID > @PYSTPTBLID ) ORDER BY PYSTPTBLID ASC, Effective_Date ASC, Step ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPS0401N_1] TO [DYNGRP]
GO