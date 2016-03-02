SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Get_Contract_Info] (   @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5),  @CUSTNMBR varchar(15) OUTPUT,  @ADRSCODE char(15) OUTPUT,  @LABPCT numeric(19,5) OUTPUT )  AS select @CUSTNMBR = Bill_To_Customer,  @ADRSCODE = SVC_Bill_To_Address_Code,  @LABPCT = LABPCT from SVC00601 where CONSTS = @CONSTS and  CONTNBR = @CONTNBR and  LNSEQNBR = @LNSEQNBR  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Contract_Info] TO [DYNGRP]
GO
