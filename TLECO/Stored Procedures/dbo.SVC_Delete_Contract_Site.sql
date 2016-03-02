SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Delete_Contract_Site]  @CONSTS smallint,  @CONTNBR char(11),  @Seq numeric(19,5),  @DeleteLines integer as declare @Site char(15) select @Site = ADRSCODE from SVC00608 where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  LNSEQNBR=@Seq and  canceled = 0 if exists(select * from SVC00601   where BILSTAT <> 0 and   ADRSCODE = @Site and  CONSTS=@CONSTS and  CONTNBR=@CONTNBR) return -1 if exists(select * from SVC00601   where Contract_Line_Status >= 'A' and   Contract_Line_Status < 'I' and  ADRSCODE = @Site and  CONSTS=@CONSTS and  CONTNBR=@CONTNBR) return -1 delete from SVC00655 where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  LNSEQNBR=@Seq delete from SVC00608  where CONSTS=@CONSTS and  CONTNBR=@CONTNBR and  LNSEQNBR=@Seq if @Site is not null and @DeleteLines = 1 BEGIN  exec SVC_Del_Cont_Lines_at_Site @CONSTS,@CONTNBR,@Site END    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_Contract_Site] TO [DYNGRP]
GO
