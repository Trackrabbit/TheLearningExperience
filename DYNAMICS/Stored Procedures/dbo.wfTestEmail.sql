SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[wfTestEmail]  @fromEmail nvarchar(255),  @server nvarchar(80),  @port int,  @ssl int,  @authentication int,  @user nvarchar(85),  @passwrod nvarchar(255),  @toMail nvarchar(255),  @subject nvarchar(255),  @body nvarchar(255)  AS  BEGIN  EXECUTE [dbo].[TestEmail]   @fromEmail  ,@server  ,@port  ,@ssl  ,@authentication  ,@user  ,@passwrod  ,@toMail  ,@subject  ,@body END   
GO
GRANT EXECUTE ON  [dbo].[wfTestEmail] TO [DYNGRP]
GO
