SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Set_Contract_Line_Dist]  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5)  AS declare @SEQNUMBR integer declare @SalesIndex integer declare @ARIndex integer declare @AccrualIndex integer declare @DistType smallint declare @ContractType char(11) declare @Customer char(15)  delete from SVC00609 with (rowlock)  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR  select @ContractType = CNTTYPE, @Customer = CUSTNMBR from SVC00601  where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR select @AccrualIndex = GL_Prepaid_Account, @SalesIndex = GL_Service_Account from SVC00602  where CNTTYPE = @ContractType  select @ARIndex = RMARACC from RM00101 where CUSTNMBR = @Customer if @ARIndex = 0 or @ARIndex is null  select @ARIndex = ACTINDX from SY01100 where SERIES=3 and SEQNUMBR = 100  select @SEQNUMBR = 16384  insert SVC00609 with (rowlock)  select  @CONSTS, @CONTNBR, @LNSEQNBR, @SEQNUMBR, 1,  '', isnull(@SalesIndex,0)  insert SVC00609 with (rowlock)  select  @CONSTS, @CONTNBR, @LNSEQNBR, @SEQNUMBR, 11,  '', isnull(@AccrualIndex,0)  insert SVC00609 with (rowlock)  select  @CONSTS, @CONTNBR, @LNSEQNBR, @SEQNUMBR, 2,  '', isnull(@ARIndex,0)  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Set_Contract_Line_Dist] TO [DYNGRP]
GO
