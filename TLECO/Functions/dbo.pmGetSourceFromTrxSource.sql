SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[pmGetSourceFromTrxSource] (  @I_cTrxSrc char(13),  @I_nLanguageID smallint = 0,  @I_cRecvgPrefix char(13),  @I_cPOIvcPrefix char(13),  @I_cPORetPrefix char(13) ) RETURNS smallint AS BEGIN  DECLARE  @iRecvgPrefixLen int,  @iPOIvcPrefixLen int,  @iPORetPrefixLen int,  @sSource smallint  set @iRecvgPrefixLen = LEN(@I_cRecvgPrefix) set @iPOIvcPrefixLen = LEN(@I_cPOIvcPrefix) set @iPORetPrefixLen = LEN(@I_cPORetPrefix)  select @sSource = case  when substring(@I_cTrxSrc, 1, @iRecvgPrefixLen) = @I_cRecvgPrefix then 2  when substring(@I_cTrxSrc, 1, @iPOIvcPrefixLen) = @I_cPOIvcPrefix then 2  when substring(@I_cTrxSrc, 1, @iPORetPrefixLen) = @I_cPORetPrefix then 4  else 19  end  return @sSource END   
GO
GRANT EXECUTE ON  [dbo].[pmGetSourceFromTrxSource] TO [DYNGRP]
GO
