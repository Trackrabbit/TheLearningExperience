SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[pmGetDocTypeFromTrxSource] (  @I_cTrxSrc char(13),  @I_nLanguageID smallint = 0,  @I_cDocNumber varchar(20),  @I_sPMDocType smallint = 0,  @I_cRecvgPrefix char(13),  @I_cPOIvcPrefix char(13),  @I_cPORetPrefix char(13) ) RETURNS smallint AS BEGIN  DECLARE  @iRecvgPrefixLen int,  @iPOIvcPrefixLen int,  @iPORetPrefixLen int,  @sDocType smallint,  @sRcptType smallint  set @iRecvgPrefixLen = LEN(@I_cRecvgPrefix) set @iPOIvcPrefixLen = LEN(@I_cPOIvcPrefix) set @iPORetPrefixLen = LEN(@I_cPORetPrefix)  select @sRcptType = isnull((select POPTYPE from POP30300 where VCHRNMBR = @I_cDocNumber and TRXSORCE = @I_cTrxSrc), 0)  select @sDocType = case  when substring(@I_cTrxSrc, 1, @iRecvgPrefixLen) = @I_cRecvgPrefix then 3   when substring(@I_cTrxSrc, 1, @iPOIvcPrefixLen) = @I_cPOIvcPrefix then 2   when substring(@I_cTrxSrc, 1, @iPORetPrefixLen) = @I_cPORetPrefix then   (select case   when @sRcptType = 4  or   @sRcptType = 5  or   @sRcptType = 6  or  @sRcptType = 7  then @sRcptType  else @I_sPMDocType  end)   else @I_sPMDocType  end  return @sDocType END   
GO
GRANT EXECUTE ON  [dbo].[pmGetDocTypeFromTrxSource] TO [DYNGRP]
GO
