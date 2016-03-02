SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA15000SI] (@GLINTBTCHNUM char(15), @POSTED tinyint, @GLINTTRXDATE datetime, @GL_Interface_Comment char(31), @GL_Intf_Begin_Period smallint, @GL_Interface_Begin_Year smallint, @GL_Interface_End_Period smallint, @GL_Interface_End_Year smallint, @SSRCEDOC char(11), @ENDSRCDC char(11), @Start_Asset_ID char(15), @End_Asset_ID char(15), @Start_Asset_ID_Suffix smallint, @End_Asset_ID_Suffix smallint, @STTCLSID char(15), @ENDCLSID char(15), @BOOKINDX int, @JRNENTRY int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @USERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA15000 (GLINTBTCHNUM, POSTED, GLINTTRXDATE, GL_Interface_Comment, GL_Intf_Begin_Period, GL_Interface_Begin_Year, GL_Interface_End_Period, GL_Interface_End_Year, SSRCEDOC, ENDSRCDC, Start_Asset_ID, End_Asset_ID, Start_Asset_ID_Suffix, End_Asset_ID_Suffix, STTCLSID, ENDCLSID, BOOKINDX, JRNENTRY, DEBITAMT, CRDTAMNT, USERID) VALUES ( @GLINTBTCHNUM, @POSTED, @GLINTTRXDATE, @GL_Interface_Comment, @GL_Intf_Begin_Period, @GL_Interface_Begin_Year, @GL_Interface_End_Period, @GL_Interface_End_Year, @SSRCEDOC, @ENDSRCDC, @Start_Asset_ID, @End_Asset_ID, @Start_Asset_ID_Suffix, @End_Asset_ID_Suffix, @STTCLSID, @ENDCLSID, @BOOKINDX, @JRNENTRY, @DEBITAMT, @CRDTAMNT, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA15000SI] TO [DYNGRP]
GO
