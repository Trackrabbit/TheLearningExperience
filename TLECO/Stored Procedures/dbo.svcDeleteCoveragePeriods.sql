SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[svcDeleteCoveragePeriods]  @CONSTS smallint,  @CONTNBR char(11),  @Seq numeric(19,5),  @option smallint  as  if @option = 3  delete from SVC00683 with (rowlock) where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @Seq else if @option = 2  delete from SVC00682 with (rowlock) where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @Seq else if @option = 1  delete from SVC00681 with (rowlock) where CONSTS = @CONSTS and CONTNBR = @CONTNBR else  begin  delete from SVC00683 with (rowlock) where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @Seq  delete from SVC00682 with (rowlock) where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @Seq  delete from SVC00681 with (rowlock) where CONSTS = @CONSTS and CONTNBR = @CONTNBR  end  return   
GO
GRANT EXECUTE ON  [dbo].[svcDeleteCoveragePeriods] TO [DYNGRP]
GO
