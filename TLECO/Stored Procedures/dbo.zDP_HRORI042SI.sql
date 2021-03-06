SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRORI042SI] (@EMPID_I char(15), @ORSETUPCODE_I char(31), @ORSETUPNAME_I char(31), @DATEIN_I datetime, @DATEOUT_I datetime, @CLOSEDBY_I char(31), @NOTESINDEX_I numeric(19,5), @DATEOFLASTCHANGE_I datetime, @USERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRORI042 (EMPID_I, ORSETUPCODE_I, ORSETUPNAME_I, DATEIN_I, DATEOUT_I, CLOSEDBY_I, NOTESINDEX_I, DATEOFLASTCHANGE_I, USERID) VALUES ( @EMPID_I, @ORSETUPCODE_I, @ORSETUPNAME_I, @DATEIN_I, @DATEOUT_I, @CLOSEDBY_I, @NOTESINDEX_I, @DATEOFLASTCHANGE_I, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRORI042SI] TO [DYNGRP]
GO
