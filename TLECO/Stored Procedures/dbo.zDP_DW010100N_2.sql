SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DW010100N_2] (@BS int, @ITEMNMBR char(31), @DEX_ROW_ID int, @ITEMNMBR_RS char(31), @ITEMNMBR_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  DWGNUM_I, ITEMNMBR, DEX_ROW_ID FROM .DW010100 WHERE ( ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  DWGNUM_I, ITEMNMBR, DEX_ROW_ID FROM .DW010100 WHERE ITEMNMBR = @ITEMNMBR_RS AND ( ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DWGNUM_I, ITEMNMBR, DEX_ROW_ID FROM .DW010100 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DW010100N_2] TO [DYNGRP]
GO
