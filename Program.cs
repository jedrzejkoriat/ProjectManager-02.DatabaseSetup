using Microsoft.Data.SqlClient;
using ProjectManager_02.DatabaseSetup;

// Add your database server name!!!
string serverName = "(localdb)\\MSSQLLocalDB";

// Essential scripts
string scriptsPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "DatabaseScripts");
var sqlFiles = Directory.GetFiles(scriptsPath, "*.sql").OrderBy(f => f);

bool isFirst = true;
foreach (var file in sqlFiles)
{
    if (isFirst)
        ScriptHelper.ExecuteScript(file, serverName, "master");
    else
        ScriptHelper.ExecuteScript(file, serverName, "ProjectManagerDB");

    isFirst = false;
}

// Admin
Console.WriteLine();
Console.WriteLine("========================================");
Console.Write("Add initial admin? (y/n): ");
char addAdmin = Console.ReadKey().KeyChar;

if (addAdmin == 'y')
{
    string adminScriptsPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Admin");
    var adminSqlFiles = Directory.GetFiles(adminScriptsPath, "*.sql").OrderBy(f => f);

    foreach (var file in adminSqlFiles)
    {
        ScriptHelper.ExecuteScript(file, serverName, "ProjectManagerDB");
    }

    Console.WriteLine();
    Console.WriteLine("Login: Admin");
    Console.WriteLine("Password: Password123!");
}

// Test data
Console.WriteLine();
Console.WriteLine("========================================");
Console.Write("Add test data? (y/n): ");
char addTestData = Console.ReadKey().KeyChar;

if (addTestData == 'y')
{
    string testScriptsPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "TestData");
    var testSqlFiles = Directory.GetFiles(testScriptsPath, "*.sql").OrderBy(f => f);

    foreach (var file in testSqlFiles)
    {
        ScriptHelper.ExecuteScript(file, serverName, "ProjectManagerDB");
    }

    Console.WriteLine();
    Console.WriteLine("Login: superuser [USER WITH ALL PERMISSIONS FOR 'testproject']");
    Console.WriteLine("Login: zerouser [USER WITHOUT PROJECT PERMISSIONS]");
    Console.WriteLine("Login: adminn [ADMIN]");
    Console.WriteLine("Password: password");
}