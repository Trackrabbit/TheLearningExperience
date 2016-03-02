SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Delete_Option_All_Sites](@CONSTS smallint,  @CONTNBR char(11),  @OPTTYPE char(11)) as delete from SVC00655  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and OPTTYPE = @OPTTYPE     
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_Option_All_Sites] TO [DYNGRP]
GO
