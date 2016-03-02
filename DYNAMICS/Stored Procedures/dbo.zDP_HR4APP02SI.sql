SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR4APP02SI] (@APPLICANTNUMBER_I numeric(19,5), @ISEQUENCENUMBER_I smallint, @APPLYDATE_I datetime, @REQUISITIONNUMBER_I int, @COMPANYCODE_I char(7), @DIVISIONCODE_I char(7), @DEPARTMENTCODE_I char(7), @POSITIONCODE_I char(7), @LOCCODE_I char(15), @STATUS0_I smallint, @REJECTREASON_I smallint, @DSCRIPTN char(31), @NOTESINDEX_I numeric(19,5), @COLORCODE_I smallint, @COLORSTRING_I char(7), @REFSOURCEDDL_I smallint, @REFERENCESOURCE_I char(31), @RELOCATION_I smallint, @REPLYLETTERSENT_I tinyint, @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR4APP02 (APPLICANTNUMBER_I, ISEQUENCENUMBER_I, APPLYDATE_I, REQUISITIONNUMBER_I, COMPANYCODE_I, DIVISIONCODE_I, DEPARTMENTCODE_I, POSITIONCODE_I, LOCCODE_I, STATUS0_I, REJECTREASON_I, DSCRIPTN, NOTESINDEX_I, COLORCODE_I, COLORSTRING_I, REFSOURCEDDL_I, REFERENCESOURCE_I, RELOCATION_I, REPLYLETTERSENT_I, CHANGEBY_I, CHANGEDATE_I) VALUES ( @APPLICANTNUMBER_I, @ISEQUENCENUMBER_I, @APPLYDATE_I, @REQUISITIONNUMBER_I, @COMPANYCODE_I, @DIVISIONCODE_I, @DEPARTMENTCODE_I, @POSITIONCODE_I, @LOCCODE_I, @STATUS0_I, @REJECTREASON_I, @DSCRIPTN, @NOTESINDEX_I, @COLORCODE_I, @COLORSTRING_I, @REFSOURCEDDL_I, @REFERENCESOURCE_I, @RELOCATION_I, @REPLYLETTERSENT_I, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR4APP02SI] TO [DYNGRP]
GO