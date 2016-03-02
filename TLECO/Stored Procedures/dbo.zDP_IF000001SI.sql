SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000001SI] (@UNIQKEY char(1), @IF_Activated tinyint, @IF_Distribution_Created tinyint, @IF_Method smallint, @SGMTNUMB smallint, @SGMNTID char(67), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IF000001 (UNIQKEY, IF_Activated, IF_Distribution_Created, IF_Method, SGMTNUMB, SGMNTID, NOTEINDX) VALUES ( @UNIQKEY, @IF_Activated, @IF_Distribution_Created, @IF_Method, @SGMTNUMB, @SGMNTID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000001SI] TO [DYNGRP]
GO
