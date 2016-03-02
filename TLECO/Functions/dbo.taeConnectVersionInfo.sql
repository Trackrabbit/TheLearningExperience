SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
  create function [dbo].[taeConnectVersionInfo]()  returns varchar(25)  with encryption  as  begin  return ('14.0.0.0')  end
GO
GRANT EXECUTE ON  [dbo].[taeConnectVersionInfo] TO [DYNGRP]
GO
