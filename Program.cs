using Microsoft.Data.SqlClient;

// Add your database server
string databaseServer = "";

// Get sql files
string scriptsPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "DatabaseScripts");
var sqlFiles = Directory.GetFiles(scriptsPath, "*.sql")
                        .OrderBy(f => f);

// Initial script - to create database
string connectionStringInitial = $"Server={databaseServer};Database=master;Trusted_Connection=True;MultipleActiveResultSets=true;Encrypt=False";

string sqlInitial = File.ReadAllText(sqlFiles.First());
Console.WriteLine($"Executing: {Path.GetFileName(sqlFiles.First())}");

using var connectionInitial = new SqlConnection(connectionStringInitial);
connectionInitial.Open();

using var commandInitial = new SqlCommand(sqlInitial, connectionInitial);
commandInitial.ExecuteNonQuery();

Console.WriteLine($"Done: {Path.GetFileName(sqlFiles.First())}");

// The rest of the scripts
foreach (var file in sqlFiles.Skip(1))
{
    string connectionString = $"Server={databaseServer};Database=ProjectManagerDB;Trusted_Connection=True;MultipleActiveResultSets=true;Encrypt=False";

    string sql = File.ReadAllText(file);
    Console.WriteLine($"Executing: {Path.GetFileName(file)}");

    using var connection = new SqlConnection(connectionString);
    connection.Open();

    using var command = new SqlCommand(sql, connection);
    command.ExecuteNonQuery();

    Console.WriteLine($"Done: {Path.GetFileName(file)}");
}