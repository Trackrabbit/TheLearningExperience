SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_Calc_SOP_Document](@SOPTYPE smallint,  @SOPNUMBE char(21),  @Type smallint,  @DOCNUMBER varchar(21),  @Release varchar(5)) as   if exists(select * from sysobjects where name = 'VTX_Calc_SOP_Document')  exec VTX_Calc_SOP_Document @SOPTYPE,@SOPNUMBE,@Type,@DOCNUMBER, @Release    
GO
GRANT EXECUTE ON  [dbo].[SVC_Calc_SOP_Document] TO [DYNGRP]
GO
