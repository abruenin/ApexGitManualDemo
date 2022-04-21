prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_default_workspace_id=>101010
);
end;
/
prompt  WORKSPACE 101010
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   10:53 Thursday April 21, 2022
--   Exported By:     ADMIN
--   Export Type:     Workspace Export
--   Version:         21.2.6
--   Instance ID:     203721434884682
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_210200
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>101010);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace MANUALSYNC...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 2732477554883335
 ,p_provisioning_company_id => 101010
 ,p_short_name => 'MANUALSYNC'
 ,p_display_name => 'MANUALSYNC'
 ,p_first_schema_provisioned => 'MANUALSYNC'
 ,p_company_schemas => 'MANUALSYNC'
 ,p_expire_fnd_user_accounts => 'N'
 ,p_fnd_user_max_login_failures => 15
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'MANUALSY'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'MANUALSYNC'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1190462273144429,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1190332709144429,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1190289385144428,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2732223704883097',
  p_user_name                    => 'MANUALADMIN',
  p_first_name                   => 'Manual',
  p_last_name                    => 'Admin',
  p_description                  => '',
  p_email_address                => 'arne.bruening@oracle.com',
  p_web_password                 => '5D68659F6C2D72F064C9CF7902FDC8BDA2A0A7D4C582BDB89E0DD7419AB040E10BC6D5B0FEF72D847FD65DA7D1E11AC3A5ABE85572FA71CD866720F06B456A11',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'MANUALSYNC',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202204211045','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2733273116911506',
  p_user_name                    => 'MANUALDEV',
  p_first_name                   => 'Manual',
  p_last_name                    => 'Dev',
  p_description                  => '',
  p_email_address                => 'arne.bruening@oracle.com',
  p_web_password                 => '3293DBC90AB14C29158C8DD03CEBF1070C9C618DDD2CD75367A7980E1A4515E3C17F44D948C0E59A3EAB9D878BB2F33235DC8755FBFD3700308773EDF1EF7019',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'CREATE:EDIT:HELP:MONITOR:SQL:MONITOR:DATA_LOADER:',
  p_default_schema               => 'MANUALSYNC',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202204211050','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 2732616469883364,
    p_user_id => 2732223704883097,
    p_password => '5D68659F6C2D72F064C9CF7902FDC8BDA2A0A7D4C582BDB89E0DD7419AB040E10BC6D5B0FEF72D847FD65DA7D1E11AC3A5ABE85572FA71CD866720F06B456A11');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 2733317307911533,
    p_user_id => 2733273116911506,
    p_password => '3293DBC90AB14C29158C8DD03CEBF1070C9C618DDD2CD75367A7980E1A4515E3C17F44D948C0E59A3EAB9D878BB2F33235DC8755FBFD3700308773EDF1EF7019');
end;
/
----------------
--preferences
--
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
----------------
--Quick SQL saved models
--
----------------
--user access log
--
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'MANUALSYNC';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA MANUALSYNC - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_210200
-- Exported 10:53 Thursday April 21, 2022 by: ADMIN
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 10:53 Thursday April 21, 2022 by: ADMIN
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'MANUALSYNC';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
