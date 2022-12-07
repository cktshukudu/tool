<?php
//Database configuration 
define('DB_HOST', 'localhost');
define('CLOUDSQL_USER', 'root');
define('CLOUDSQL_PASSWORD', '');
define('CLOUDSQL_DB', 'workflow-db');
define('CLOUDSQL_DSN', '/cloudsql/dashbord-370500:us-central1:workflow-app');
// define('DB_HOST', 'us-cdbr-east-06.cleardb.net');
// define('DB_USERNAME', 'ba33707da7a635');
// define('DB_PASSWORD', '848a04ea');
// define('DB_NAME', 'heroku_88a1c9000b9bf9a');

// Google API configuration
define('GOOGLE_CLIENT_ID', '415911045939-mvdhcl77vgqt7amhlfipkqqu4vh3cgt2.apps.googleusercontent.com');
define('GOOGLE_CLIENT_SECRET', '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');
define('GOOGLE_OAUTH_SCOPE', 'https://www.googleapis.com/auth/drive');
define('REDIRECT_URI', 'http://localhost:8080/workflow-app/gd-sync.php');
//  define('REDIRECT_URI', 'https://workflow.herokuapp.com/gd-sync.php');

// Start session
if(!session_id()) session_start();

// Google OAuth URL
$googleOauthURL = 'https://accounts.google.com/o/oauth2/auth?scope=' . urlencode(GOOGLE_OAUTH_SCOPE) . '&redirect_uri=' . REDIRECT_URI . '&response_type=code&client_id=' . GOOGLE_CLIENT_ID . '&access_type=online';

?>