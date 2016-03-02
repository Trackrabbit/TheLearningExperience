SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY09000SI] (@SECURITYTASKID char(25), @SECURITYTASKNAME char(51), @SECURITYTASKDESC char(255), @SECURITYTASKCATEGORY smallint, @DEFSECTASK tinyint, @CRUSRID char(15), @CREATDDT datetime, @MDFUSRID char(15), @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY09000 (SECURITYTASKID, SECURITYTASKNAME, SECURITYTASKDESC, SECURITYTASKCATEGORY, DEFSECTASK, CRUSRID, CREATDDT, MDFUSRID, MODIFDT) VALUES ( @SECURITYTASKID, @SECURITYTASKNAME, @SECURITYTASKDESC, @SECURITYTASKCATEGORY, @DEFSECTASK, @CRUSRID, @CREATDDT, @MDFUSRID, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY09000SI] TO [DYNGRP]
GO
