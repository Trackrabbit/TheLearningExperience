SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00952N_1] (@BS int, @ITEMNMBR char(31), @LOCNCODE char(11), @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, Good_Stock, TRNSFLOC, ITLOCN, ETADAYS, SHIPMTHD, Used_Options, SVC_ItemSiteDelta, SVC_Create_Non_Serial_Eq, DEX_ROW_ID FROM .SVC00952 WHERE ( ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, LOCNCODE ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, Good_Stock, TRNSFLOC, ITLOCN, ETADAYS, SHIPMTHD, Used_Options, SVC_ItemSiteDelta, SVC_Create_Non_Serial_Eq, DEX_ROW_ID FROM .SVC00952 WHERE ITEMNMBR = @ITEMNMBR_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, LOCNCODE ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, Good_Stock, TRNSFLOC, ITLOCN, ETADAYS, SHIPMTHD, Used_Options, SVC_ItemSiteDelta, SVC_Create_Non_Serial_Eq, DEX_ROW_ID FROM .SVC00952 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, LOCNCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00952N_1] TO [DYNGRP]
GO
