<?php

//  define('SHOW_VARIABLES', 1);
//  define('DEBUG_LEVEL', 1);

//  error_reporting(E_ALL ^ E_NOTICE);
//  ini_set('display_errors', 'On');

set_include_path('.' . PATH_SEPARATOR . get_include_path());


include_once dirname(__FILE__) . '/' . 'components/utils/system_utils.php';
include_once dirname(__FILE__) . '/' . 'components/mail/mailer.php';
include_once dirname(__FILE__) . '/' . 'components/mail/phpmailer_based_mailer.php';
require_once dirname(__FILE__) . '/' . 'database_engine/mysql_engine.php';

//  SystemUtils::DisableMagicQuotesRuntime();

SystemUtils::SetTimeZoneIfNeed('America/Argentina/Buenos_Aires');

function GetGlobalConnectionOptions()
{
    return
        array(
          'server' => 'localhost',
          'port' => '3306',
          'username' => 'root',
          'database' => 'phpbd',
          'client_encoding' => 'utf8'
        );
}

function HasAdminPage()
{
    return false;
}

function HasHomePage()
{
    return true;
}

function GetHomeURL()
{
    return 'index.php';
}

function GetHomePageBanner()
{
    return '';
}

function GetPageGroups()
{
    $result = array();
    $result[] = array('caption' => 'Default', 'description' => '');
    return $result;
}

function GetPageInfos()
{
    $result = array();
    $result[] = array('caption' => 'Usuarios', 'short_caption' => 'Usuarios', 'filename' => 'usuarios.php', 'name' => 'usuarios', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Slider', 'short_caption' => 'Slider', 'filename' => 'slider.php', 'name' => 'slider', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Projetos', 'short_caption' => 'Projetos', 'filename' => 'projetos.php', 'name' => 'projetos', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Apm', 'short_caption' => 'Apm', 'filename' => 'apm.php', 'name' => 'apm', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Cursos Tecnicos', 'short_caption' => 'Cursos Tecnicos', 'filename' => 'cursos_tecnicos.php', 'name' => 'cursos_tecnicos', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Downloads', 'short_caption' => 'Downloads', 'filename' => 'downloads.php', 'name' => 'downloads', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Concursos', 'short_caption' => 'Concursos', 'filename' => 'concursos.php', 'name' => 'concursos', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Estagio', 'short_caption' => 'Estagio', 'filename' => 'estagio.php', 'name' => 'estagio', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Gabarito', 'short_caption' => 'Gabarito', 'filename' => 'gabarito.php', 'name' => 'gabarito', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Vagas Remanescentes', 'short_caption' => 'Vagas Remanescentes', 'filename' => 'vagas_remanescentes.php', 'name' => 'vagas_remanescentes', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Reunioes', 'short_caption' => 'Reunioes', 'filename' => 'reunioes.php', 'name' => 'reunioes', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Eventos Futuros', 'short_caption' => 'Eventos Futuros', 'filename' => 'eventos_futuros.php', 'name' => 'eventos_futuros', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Tcc', 'short_caption' => 'Tcc', 'filename' => 'tcc.php', 'name' => 'tcc', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Comunicados', 'short_caption' => 'Comunicados', 'filename' => 'comunicados.php', 'name' => 'comunicados', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Cardapio', 'short_caption' => 'Cardapio', 'filename' => 'cardapio.php', 'name' => 'cardapio', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Cafe Intervalo', 'short_caption' => 'Cafe Intervalo', 'filename' => 'cafe_intervalo.php', 'name' => 'cafe_intervalo', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Cardapio Almoco', 'short_caption' => 'Cardapio Almoco', 'filename' => 'cardapio_almoco.php', 'name' => 'cardapio_almoco', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    $result[] = array('caption' => 'Cardapio Janta', 'short_caption' => 'Cardapio Janta', 'filename' => 'cardapio_janta.php', 'name' => 'cardapio_janta', 'group_name' => 'Default', 'add_separator' => false, 'description' => '');
    return $result;
}

function GetPagesHeader()
{
    return
        '';
}

function GetPagesFooter()
{
    return
        '';
}

function ApplyCommonPageSettings(Page $page, Grid $grid)
{
    $page->SetShowUserAuthBar(true);
    $page->setShowNavigation(true);
    $page->OnGetCustomExportOptions->AddListener('Global_OnGetCustomExportOptions');
    $page->getDataset()->OnGetFieldValue->AddListener('Global_OnGetFieldValue');
    $page->getDataset()->OnGetFieldValue->AddListener('OnGetFieldValue', $page);
    $grid->BeforeUpdateRecord->AddListener('Global_BeforeUpdateHandler');
    $grid->BeforeDeleteRecord->AddListener('Global_BeforeDeleteHandler');
    $grid->BeforeInsertRecord->AddListener('Global_BeforeInsertHandler');
    $grid->AfterUpdateRecord->AddListener('Global_AfterUpdateHandler');
    $grid->AfterDeleteRecord->AddListener('Global_AfterDeleteHandler');
    $grid->AfterInsertRecord->AddListener('Global_AfterInsertHandler');
}

function GetAnsiEncoding() { return 'windows-1252'; }

function Global_AddEnvironmentVariablesHandler(&$variables)
{

}

function Global_CustomHTMLHeaderHandler($page, &$customHtmlHeaderText)
{

}

function Global_GetCustomTemplateHandler($type, $part, $mode, &$result, &$params, CommonPage $page = null)
{

}

function Global_OnGetCustomExportOptions($page, $exportType, $rowData, &$options)
{

}

function Global_OnGetFieldValue($fieldName, &$value, $tableName)
{

}

function Global_GetCustomPageList(CommonPage $page, PageList $pageList)
{

}

function Global_BeforeInsertHandler($page, &$rowData, $tableName, &$cancel, &$message, &$messageDisplayTime)
{

}

function Global_BeforeUpdateHandler($page, $oldRowData, &$rowData, $tableName, &$cancel, &$message, &$messageDisplayTime)
{

}

function Global_BeforeDeleteHandler($page, &$rowData, $tableName, &$cancel, &$message, &$messageDisplayTime)
{

}

function Global_AfterInsertHandler($page, $rowData, $tableName, &$success, &$message, &$messageDisplayTime)
{

}

function Global_AfterUpdateHandler($page, $oldRowData, $rowData, $tableName, &$success, &$message, &$messageDisplayTime)
{

}

function Global_AfterDeleteHandler($page, $rowData, $tableName, &$success, &$message, &$messageDisplayTime)
{

}

function GetDefaultDateFormat()
{
    return 'Y-m-d';
}

function GetFirstDayOfWeek()
{
    return 0;
}

function GetPageListType()
{
    return PageList::TYPE_SIDEBAR;
}

function GetNullLabel()
{
    return null;
}

function UseMinifiedJS()
{
    return true;
}

function GetOfflineMode()
{
    return false;
}

function GetInactivityTimeout()
{
    return 300;
}

function GetMailer()
{

}

function sendMailMessage($recipients, $messageSubject, $messageBody, $attachments = '', $cc = '', $bcc = '')
{

}

function createConnection()
{
    $connectionOptions = GetGlobalConnectionOptions();
    $connectionOptions['client_encoding'] = 'utf8';

    $connectionFactory = MyPDOConnectionFactory::getInstance();
    return $connectionFactory->CreateConnection($connectionOptions);
}

/**
 * @param string $pageName
 * @return IPermissionSet
 */
function GetCurrentUserPermissionsForPage($pageName) 
{
    return GetApplication()->GetCurrentUserPermissionSet($pageName);
}
