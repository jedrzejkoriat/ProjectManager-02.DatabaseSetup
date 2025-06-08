using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace ProjectManager_02.DatabaseSetup;
public static class ScriptHelper
{
    public static void ExecuteScript(string file, string serverName, string databaseName)
    {
        string connectionString = $"Server={serverName};Database={databaseName};Trusted_Connection=True;MultipleActiveResultSets=true;Encrypt=False";

        string sql = File.ReadAllText(file);
        Console.WriteLine($"Executing: {Path.GetFileName(file)}");

        using var connection = new SqlConnection(connectionString);
        connection.Open();

        using var command = new SqlCommand(sql, connection);
        command.ExecuteNonQuery();

        Console.WriteLine($"Done: {Path.GetFileName(file)}");
    }
}