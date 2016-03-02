SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Del_Cont_Lines_at_Site]  @CONSTS smallint,  @CONTNBR char(11),  @Site char(15) as  delete from SVC00603 where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  LNSEQNBR in  (select LNSEQNBR from SVC00601  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  ADRSCODE = @Site)  delete from SVC00652 where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  LNSEQNBR in  (select LNSEQNBR from SVC00601  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  ADRSCODE = @Site)  delete from SVC00601  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  ADRSCODE = @Site exec SVC_Set_Contract_Amount_Totals @CONSTS, @CONTNBR  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Del_Cont_Lines_at_Site] TO [DYNGRP]
GO
