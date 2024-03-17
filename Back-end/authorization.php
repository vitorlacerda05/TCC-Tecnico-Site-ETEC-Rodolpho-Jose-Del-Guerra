<?php

include_once dirname(__FILE__) . '/' . 'components/application.php';
include_once dirname(__FILE__) . '/' . 'components/page/page.php';
include_once dirname(__FILE__) . '/' . 'components/security/permission_set.php';
include_once dirname(__FILE__) . '/' . 'components/security/user_authentication/hard_coded_user_authentication.php';
include_once dirname(__FILE__) . '/' . 'components/security/grant_manager/hard_coded_user_grant_manager.php';
include_once dirname(__FILE__) . '/' . 'components/security/recaptcha.php';
include_once dirname(__FILE__) . '/' . 'components/security/user_identity_storage/user_identity_session_storage.php';

$users = array('coala' => '202cb962ac59075b964b07152d234b70');

$grants = array('guest' => 
        array()
    ,
    'defaultUser' => 
        array('usuarios' => new PermissionSet(false, false, false, false),
        'slider' => new PermissionSet(false, false, false, false),
        'projetos' => new PermissionSet(false, false, false, false),
        'apm' => new PermissionSet(false, false, false, false),
        'cursos_tecnicos' => new PermissionSet(false, false, false, false),
        'downloads' => new PermissionSet(false, false, false, false),
        'concursos' => new PermissionSet(false, false, false, false),
        'estagio' => new PermissionSet(false, false, false, false),
        'gabarito' => new PermissionSet(false, false, false, false),
        'vagas_remanescentes' => new PermissionSet(false, false, false, false),
        'reunioes' => new PermissionSet(false, false, false, false),
        'eventos_futuros' => new PermissionSet(false, false, false, false),
        'tcc' => new PermissionSet(false, false, false, false),
        'comunicados' => new PermissionSet(false, false, false, false),
        'cardapio' => new PermissionSet(false, false, false, false),
        'cafe_intervalo' => new PermissionSet(false, false, false, false),
        'cardapio_almoco' => new PermissionSet(false, false, false, false),
        'cardapio_janta' => new PermissionSet(false, false, false, false))
    ,
    'guest' => 
        array('usuarios' => new PermissionSet(false, false, false, false),
        'slider' => new PermissionSet(false, false, false, false),
        'projetos' => new PermissionSet(false, false, false, false),
        'apm' => new PermissionSet(false, false, false, false),
        'cursos_tecnicos' => new PermissionSet(false, false, false, false),
        'downloads' => new PermissionSet(false, false, false, false),
        'concursos' => new PermissionSet(false, false, false, false),
        'estagio' => new PermissionSet(false, false, false, false),
        'gabarito' => new PermissionSet(false, false, false, false),
        'vagas_remanescentes' => new PermissionSet(false, false, false, false),
        'reunioes' => new PermissionSet(false, false, false, false),
        'eventos_futuros' => new PermissionSet(false, false, false, false),
        'tcc' => new PermissionSet(false, false, false, false),
        'comunicados' => new PermissionSet(false, false, false, false),
        'cardapio' => new PermissionSet(false, false, false, false),
        'cafe_intervalo' => new PermissionSet(false, false, false, false),
        'cardapio_almoco' => new PermissionSet(false, false, false, false),
        'cardapio_janta' => new PermissionSet(false, false, false, false))
    ,
    'coala' => 
        array('usuarios' => new PermissionSet(false, false, false, false),
        'slider' => new PermissionSet(false, false, false, false),
        'projetos' => new PermissionSet(false, false, false, false),
        'apm' => new PermissionSet(false, false, false, false),
        'cursos_tecnicos' => new PermissionSet(false, false, false, false),
        'downloads' => new PermissionSet(false, false, false, false),
        'concursos' => new PermissionSet(false, false, false, false),
        'estagio' => new PermissionSet(false, false, false, false),
        'gabarito' => new PermissionSet(false, false, false, false),
        'vagas_remanescentes' => new PermissionSet(false, false, false, false),
        'reunioes' => new PermissionSet(false, false, false, false),
        'eventos_futuros' => new PermissionSet(false, false, false, false),
        'tcc' => new PermissionSet(false, false, false, false),
        'comunicados' => new PermissionSet(false, false, false, false),
        'cardapio' => new PermissionSet(false, false, false, false),
        'cafe_intervalo' => new PermissionSet(false, false, false, false),
        'cardapio_almoco' => new PermissionSet(false, false, false, false),
        'cardapio_janta' => new PermissionSet(false, false, false, false))
    );

$appGrants = array('guest' => new PermissionSet(false, false, false, false),
    'defaultUser' => new PermissionSet(true, false, false, false),
    'guest' => new PermissionSet(false, false, false, false),
    'coala' => new AdminPermissionSet());

$dataSourceRecordPermissions = array();

$tableCaptions = array('usuarios' => 'Usuarios',
'slider' => 'Slider',
'projetos' => 'Projetos',
'apm' => 'Apm',
'cursos_tecnicos' => 'Cursos Tecnicos',
'downloads' => 'Downloads',
'concursos' => 'Concursos',
'estagio' => 'Estagio',
'gabarito' => 'Gabarito',
'vagas_remanescentes' => 'Vagas Remanescentes',
'reunioes' => 'Reunioes',
'eventos_futuros' => 'Eventos Futuros',
'tcc' => 'Tcc',
'comunicados' => 'Comunicados',
'cardapio' => 'Cardapio',
'cafe_intervalo' => 'Cafe Intervalo',
'cardapio_almoco' => 'Cardapio Almoco',
'cardapio_janta' => 'Cardapio Janta');

function GetReCaptcha($formId) {
    return null;
}

function SetUpUserAuthorization()
{
    global $users;
    global $grants;
    global $appGrants;
    global $dataSourceRecordPermissions;

    $hasher = GetHasher('md5');
    $userAuthentication = new HardCodedUserAuthentication(new UserIdentitySessionStorage(), false, $hasher, $users);
    $grantManager = new HardCodedUserGrantManager($grants, $appGrants);

    GetApplication()->SetUserAuthentication($userAuthentication);
    GetApplication()->SetUserGrantManager($grantManager);
    GetApplication()->SetDataSourceRecordPermissionRetrieveStrategy(new HardCodedDataSourceRecordPermissionRetrieveStrategy($dataSourceRecordPermissions));
}
