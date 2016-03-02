SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41200SI] (@INSCLASSINDX int, @INSCLASSID char(15), @INSCLASSDESC char(31), @INFLATIONRATEPCT smallint, @DEPRRATEPCT smallint, @NOTEINDX numeric(19,5), @LASTMNTDDATE datetime, @LASTMNTDTIME datetime, @LASTMNTDUSERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA41200 (INSCLASSINDX, INSCLASSID, INSCLASSDESC, INFLATIONRATEPCT, DEPRRATEPCT, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID) VALUES ( @INSCLASSINDX, @INSCLASSID, @INSCLASSDESC, @INFLATIONRATEPCT, @DEPRRATEPCT, @NOTEINDX, @LASTMNTDDATE, @LASTMNTDTIME, @LASTMNTDUSERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41200SI] TO [DYNGRP]
GO
