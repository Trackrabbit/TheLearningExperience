SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HRAPP002SI] (@APPINTTYPECODE_I smallint, @APPINTCATCODE_I smallint, @CATEGORY_I char(31), @WEIGHTFACTOR_I smallint, @SEQORDER_I smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRAPP002 (APPINTTYPECODE_I, APPINTCATCODE_I, CATEGORY_I, WEIGHTFACTOR_I, SEQORDER_I) VALUES ( @APPINTTYPECODE_I, @APPINTCATCODE_I, @CATEGORY_I, @WEIGHTFACTOR_I, @SEQORDER_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRAPP002SI] TO [DYNGRP]
GO
