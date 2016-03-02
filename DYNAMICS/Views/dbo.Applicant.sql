SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Applicant] AS select rtrim(['HR_Applicant'].[FFIRSTNAME_I]) as 'First Name', rtrim(['HR_Applicant'].[LLASTNAME_I]) as 'Last Name', rtrim(['HR_Applicant'].[ADDRESS1]) as 'Address 1', rtrim(['HR_Applicant'].[ADDRESS2]) as 'Address 2', rtrim(['HR_Applicant'].[CITY]) as 'City', rtrim(['HR_Applicant'].[STATE]) as 'State', rtrim(['HR_Applicant'].[ZIPCODE_I]) as 'Zip Code', rtrim(['HR_Applicant'].[HOMEPHONE]) as 'Home Phone', rtrim(['HR_Applicant'].[WORKPHONE]) as 'Work Phone',  ['HR_Applicant'].[APPLICANTNUMBER_I] as 'Applicant Number', ['HR_Applicant'].[APPLYDATE_I] as 'Apply Date', rtrim(['HR_Applicant'].[CHANGEBY_I]) as 'Change By', ['HR_Applicant'].[CHANGEDATE_I] as 'Change Date', 'Color Code' = dbo.HR_FUNC_Color_Code(['HR_Applicant'].[COLORCODE_I]), rtrim(['HR_Applicant'].[COLORSTRING_I]) as 'Color String', rtrim(['HR_Applicant'].[COMPANYCODE_I]) as 'Company Code', rtrim(['HR_Applicant'].[COUNTRY]) as 'Country', rtrim(['HR_Applicant'].[DEPARTMENTCODE_I]) as 'Department Code', rtrim(['HR_Applicant'].[DSCRIPTN]) as 'Description', 'Disabled Veteran' = dbo.DYN_FUNC_Boolean_All(['HR_Applicant'].[DISABLEDVETERAN]), rtrim(['HR_Applicant'].[DIVISIONCODE_I]) as 'Division Code', 'EEO Age' = dbo.HR_FUNC_EEO_Age(['HR_Applicant'].[EEOAGE_I]), 'EEO Ethnic Origin' = dbo.HR_FUNC_Ethnic_Origin(['HR_Applicant'].[EEOETHNICORIGIN_I]), rtrim(['HR_Applicant'].[EXT_I]) as 'Ext', 'Gender GB' = dbo.HR_FUNC_Gender_GB(['HR_Applicant'].[GENDERGB_I]), 'Handicapped' = dbo.DYN_FUNC_Boolean_All(['HR_Applicant'].[HANDICAPPED]), rtrim(['HR_Applicant'].[SSN_I]) as 'ISSN', ['HR_Applicant'].[ISEQUENCENUMBER_I] as 'ISequence Number', rtrim(['HR_Applicant'].[LOCATNID]) as 'Location Code', rtrim(['HR_Applicant'].[MIDLNAME]) as 'Middle Name', ['HR_Applicant'].[NOTESINDEX_I] as 'Notes Index', rtrim(['HR_Applicant'].[POSITIONCODE_I]) as 'Position Code', 'Ref Source DDL' = dbo.HR_FUNC_Ref_Source_DDL(['HR_Applicant'].[REFSOURCEDDL_I]), rtrim(['HR_Applicant'].[DSCRIPTN]) as 'Reject Comment', 'Reject Reason' = dbo.HR_FUNC_Reject_Reason(['HR_Applicant'].[REJECTREASON_I]), 'Relocation' = dbo.HR_FUNC_Relocation(['HR_Applicant'].[RELOCATION_I]), 'Reply Letter Sent' = dbo.DYN_FUNC_Boolean_All(['HR_Applicant'].[REPLYLETTERSENT_I]), ['HR_Applicant'].[REQUISITIONNUMBER_I] as 'Requisition Number', 'Status' = dbo.HR_FUNC_Status_Applicant(['HR_Applicant'].[STATUS0_I]), 'Veteran' = dbo.DYN_FUNC_Boolean_All(['HR_Applicant'].[VETERAN]), 'Vietnam Veteran' = dbo.DYN_FUNC_Boolean_All(['HR_Applicant'].[VIETNAMVETERAN])           from [HR2APP12] as ['HR_Applicant'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[Applicant] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[Applicant] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[Applicant] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[Applicant] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[Applicant] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[Applicant] TO [rpt_human resource administrator]
GO
