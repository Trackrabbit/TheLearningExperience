SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE Proc [dbo].[DE_UpdateJEforIC] @Dex int,@JE int
as


Declare @ORCTRNUM Numeric(19,5)
Declare @ORDOCNUM Char(20)

Select @ORCTRNUM=Xfr_Record_Number,@ORDOCNUM=CMXFRNUM from CM20600 where DEX_ROW_ID=@Dex


update GL10001 Set ORCTRNUM=@ORCTRNUM,ORDOCNUM=@ORDOCNUM,ORTRXTYP=7,DTA_GL_Status=40 where  JrnEntry = @JE 
--Select * from GL10001 order by DEX_ROW_ID desc

GO
GRANT EXECUTE ON  [dbo].[DE_UpdateJEforIC] TO [DYNGRP]
GO
