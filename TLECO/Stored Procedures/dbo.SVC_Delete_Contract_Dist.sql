SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Delete_Contract_Dist]  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR integer as  delete from SVC00609 where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  LNSEQNBR= @LNSEQNBR  delete from SVC00631 where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  LNSEQNBR = @LNSEQNBR    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_Contract_Dist] TO [DYNGRP]
GO
