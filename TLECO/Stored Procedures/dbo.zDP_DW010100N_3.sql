SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DW010100N_3] (@BS int, @ITEMNMBR char(31), @DWGNUM_I char(31), @ITEMNMBR_RS char(31), @DWGNUM_I_RS char(31), @ITEMNMBR_RE char(31), @DWGNUM_I_RE char(31)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  DWGNUM_I, ITEMNMBR, DEX_ROW_ID FROM .DW010100 WHERE ( ITEMNMBR = @ITEMNMBR AND DWGNUM_I > @DWGNUM_I OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DWGNUM_I ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  DWGNUM_I, ITEMNMBR, DEX_ROW_ID FROM .DW010100 WHERE ITEMNMBR = @ITEMNMBR_RS AND DWGNUM_I BETWEEN @DWGNUM_I_RS AND @DWGNUM_I_RE AND ( ITEMNMBR = @ITEMNMBR AND DWGNUM_I > @DWGNUM_I OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DWGNUM_I ASC END ELSE BEGIN SELECT TOP 25  DWGNUM_I, ITEMNMBR, DEX_ROW_ID FROM .DW010100 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND DWGNUM_I BETWEEN @DWGNUM_I_RS AND @DWGNUM_I_RE AND ( ITEMNMBR = @ITEMNMBR AND DWGNUM_I > @DWGNUM_I OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, DWGNUM_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DW010100N_3] TO [DYNGRP]
GO
