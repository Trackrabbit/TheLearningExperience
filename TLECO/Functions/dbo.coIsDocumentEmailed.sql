SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[coIsDocumentEmailed] (  @I_DictID smallint,  @I_Module smallint,  @I_DocType smallint,  @I_sDocNum Char(21) ) RETURNS int AS BEGIN  DECLARE  @InfoValue int  select @InfoValue = (select TOP(1) SEQNUMBR from SY04915   where DICTRYID = @I_DictID and MODULE1 = @I_Module  and   DOCTYPE = @I_DocType and  DOCNUMBR = @I_sDocNum )  if  @InfoValue >= 0  select  @InfoValue = 1  else  select @InfoValue = 0   return @InfoValue END   
GO
GRANT EXECUTE ON  [dbo].[coIsDocumentEmailed] TO [DYNGRP]
GO
