SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40108F_2] (@REPORTID_RS smallint, @MBRWNUM_RS smallint, @TOTRWNUM_RS smallint, @REPORTID_RE smallint, @MBRWNUM_RE smallint, @TOTRWNUM_RE smallint) AS  set nocount on IF @REPORTID_RS IS NULL BEGIN SELECT TOP 25  REPORTID, TOTRWNUM, MBRWNUM, DEX_ROW_ID FROM .AF40108 ORDER BY REPORTID ASC, MBRWNUM ASC, TOTRWNUM ASC END ELSE IF @REPORTID_RS = @REPORTID_RE BEGIN SELECT TOP 25  REPORTID, TOTRWNUM, MBRWNUM, DEX_ROW_ID FROM .AF40108 WHERE REPORTID = @REPORTID_RS AND MBRWNUM BETWEEN @MBRWNUM_RS AND @MBRWNUM_RE AND TOTRWNUM BETWEEN @TOTRWNUM_RS AND @TOTRWNUM_RE ORDER BY REPORTID ASC, MBRWNUM ASC, TOTRWNUM ASC END ELSE BEGIN SELECT TOP 25  REPORTID, TOTRWNUM, MBRWNUM, DEX_ROW_ID FROM .AF40108 WHERE REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND MBRWNUM BETWEEN @MBRWNUM_RS AND @MBRWNUM_RE AND TOTRWNUM BETWEEN @TOTRWNUM_RS AND @TOTRWNUM_RE ORDER BY REPORTID ASC, MBRWNUM ASC, TOTRWNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40108F_2] TO [DYNGRP]
GO