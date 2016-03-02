SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00922UN_2] (@BS int, @SRVTYPE char(11), @FRMSTAT char(3), @TOSTAT char(3), @SRVTYPE_RS char(11), @FRMSTAT_RS char(3), @TOSTAT_RS char(3), @SRVTYPE_RE char(11), @FRMSTAT_RE char(3), @TOSTAT_RE char(3)) AS  set nocount on IF @SRVTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVTYPE, LNITMSEQ, ESCTYPE, FRMSTAT, TOSTAT, TECHID, priorityLevel, WAITTME, svcManagerLevel, DEX_ROW_ID FROM .SVC00922 WHERE ( SRVTYPE = @SRVTYPE AND FRMSTAT = @FRMSTAT AND TOSTAT > @TOSTAT OR SRVTYPE = @SRVTYPE AND FRMSTAT > @FRMSTAT OR SRVTYPE > @SRVTYPE ) ORDER BY SRVTYPE ASC, FRMSTAT ASC, TOSTAT ASC, DEX_ROW_ID ASC END ELSE IF @SRVTYPE_RS = @SRVTYPE_RE BEGIN SELECT TOP 25  SRVTYPE, LNITMSEQ, ESCTYPE, FRMSTAT, TOSTAT, TECHID, priorityLevel, WAITTME, svcManagerLevel, DEX_ROW_ID FROM .SVC00922 WHERE SRVTYPE = @SRVTYPE_RS AND FRMSTAT BETWEEN @FRMSTAT_RS AND @FRMSTAT_RE AND TOSTAT BETWEEN @TOSTAT_RS AND @TOSTAT_RE AND ( SRVTYPE = @SRVTYPE AND FRMSTAT = @FRMSTAT AND TOSTAT > @TOSTAT OR SRVTYPE = @SRVTYPE AND FRMSTAT > @FRMSTAT OR SRVTYPE > @SRVTYPE ) ORDER BY SRVTYPE ASC, FRMSTAT ASC, TOSTAT ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVTYPE, LNITMSEQ, ESCTYPE, FRMSTAT, TOSTAT, TECHID, priorityLevel, WAITTME, svcManagerLevel, DEX_ROW_ID FROM .SVC00922 WHERE SRVTYPE BETWEEN @SRVTYPE_RS AND @SRVTYPE_RE AND FRMSTAT BETWEEN @FRMSTAT_RS AND @FRMSTAT_RE AND TOSTAT BETWEEN @TOSTAT_RS AND @TOSTAT_RE AND ( SRVTYPE = @SRVTYPE AND FRMSTAT = @FRMSTAT AND TOSTAT > @TOSTAT OR SRVTYPE = @SRVTYPE AND FRMSTAT > @FRMSTAT OR SRVTYPE > @SRVTYPE ) ORDER BY SRVTYPE ASC, FRMSTAT ASC, TOSTAT ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00922UN_2] TO [DYNGRP]
GO
