SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[SVC_ServiceCall_IsMultiTech]  ( @OpenHist integer,  @SRVRECTYPE integer,  @CALLNBR char(11),  @bmultitech bit OUTPUT ) as  declare @count int, @headerct int, @linect int select @bmultitech = 0  if @OpenHist = 1  begin  select @linect = count(TECHID) from SVC00207 where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and TECHID <> ''  if @linect > 1  select @bmultitech = 1 end  if @OpenHist = 2  begin  select @linect = count(TECHID) from SVC30207 where SRVRECTYPE = @SRVRECTYPE and CALLNBR = @CALLNBR and TECHID <> ''  if @linect > 1  select @bmultitech = 1 end   
GO
GRANT EXECUTE ON  [dbo].[SVC_ServiceCall_IsMultiTech] TO [DYNGRP]
GO
