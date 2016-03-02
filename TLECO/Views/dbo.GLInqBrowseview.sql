SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[GLInqBrowseview] AS  SELECT *,RANK() over (PARTITION BY 1 ORDER BY JRNENTRY,GLYear,TRXDATE,RCTRXSEQ ASC) SLNO  from (SELECT  DISTINCT JRNENTRY,OPENYEAR AS GLYear,TRXDATE,RCTRXSEQ,1 AS HISTOPN FROM GL20000 UNION  SELECT  DISTINCT JRNENTRY,HSTYEAR  AS GLYear,TRXDATE,RCTRXSEQ, 2 AS HISTOPN  FROM GL30000 ) GLBrowse    
GO
GRANT SELECT ON  [dbo].[GLInqBrowseview] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GLInqBrowseview] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GLInqBrowseview] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GLInqBrowseview] TO [DYNGRP]
GO
