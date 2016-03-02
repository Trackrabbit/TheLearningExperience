SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[svcGetContractSOPPostedAmt]  (  @CONSTS   smallint,  @CONTNBR   char(15),  @LNSEQNBR   numeric (19,5)  ) RETURNS  numeric (19,5) as BEGIN declare @GLPostedAmt numeric(19,5), @OldGLPostedAmt numeric(19,5)  select @GLPostedAmt = isnull(sum(PSTDAMNT),0) from SVC00603   where SVC00603.SOPNUMBE in (select SOPNUMBE from SOP30200 where SOPNUMBE = SVC00603.SOPNUMBE and SOPTYPE = SVC00603.SOPTYPE)   and CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and POSTED  = 1  if exists(select 1 from SVC00603 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and POSTED  = 1 and SOPNUMBE = '')  select @OldGLPostedAmt = isnull(sum(PSTDAMNT),0) from SVC00603   where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR and POSTED  = 1 and SOPNUMBE = ''  select @GLPostedAmt = isnull(@GLPostedAmt,0) + isnull(@OldGLPostedAmt,0) RETURN (@GLPostedAmt)  END   
GO
GRANT EXECUTE ON  [dbo].[svcGetContractSOPPostedAmt] TO [DYNGRP]
GO
