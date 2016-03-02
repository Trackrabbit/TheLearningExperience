SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB90000UN_3] (@BS int, @PRODID smallint, @GoTo_Description char(81), @PRODID_RS smallint, @GoTo_Description_RS char(81), @PRODID_RE smallint, @GoTo_Description_RE char(81)) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE ( PRODID = @PRODID AND GoTo_Description > @GoTo_Description OR PRODID > @PRODID ) ORDER BY PRODID ASC, GoTo_Description ASC, DEX_ROW_ID ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE PRODID = @PRODID_RS AND GoTo_Description BETWEEN @GoTo_Description_RS AND @GoTo_Description_RE AND ( PRODID = @PRODID AND GoTo_Description > @GoTo_Description OR PRODID > @PRODID ) ORDER BY PRODID ASC, GoTo_Description ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND GoTo_Description BETWEEN @GoTo_Description_RS AND @GoTo_Description_RE AND ( PRODID = @PRODID AND GoTo_Description > @GoTo_Description OR PRODID > @PRODID ) ORDER BY PRODID ASC, GoTo_Description ASC, DEX_ROW_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB90000UN_3] TO [DYNGRP]
GO
