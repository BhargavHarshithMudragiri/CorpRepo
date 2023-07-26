using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;

/// <summary>
/// Summary description for DataAccessLayer
/// </summary>

[DataObject(true)]
public class DataAccessLayer
{
    SqlConnection con = new SqlConnection();
    public DataAccessLayer()
    {
       string relativePath = ConfigurationManager.AppSettings["filePath"];        
       relativePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, relativePath);        
       string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + relativePath + ";Integrated Security=True";        
       con.ConnectionString = conString;
    }
    
    //insert method for tbl_Candidate
    [DataObjectMethod(DataObjectMethodType.Insert)]
    public int insertCandidate(String name, int age, String qual, int exp)
    {

        SqlCommand cmd = new SqlCommand("insert into tbl_Candidate values('" + name + "','" + age + "','" + qual + "','" + exp + "')", con);
        con.Open();
        int ret = cmd.ExecuteNonQuery();
        con.Close();
        return ret;

    }

    //select method for tbl_Candidate to get qualifications
    [DataObjectMethod(DataObjectMethodType.Select)]
    public DataSet Getcandqual()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select DISTINCT Qualification from tbl_Candidate", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    //select method for tbl_Company to get details
    [DataObjectMethod(DataObjectMethodType.Select)]
    public DataSet Getcompdet(String qual)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select CompanyName ,Department,Vacancy,ExperienceRequired from tbl_Company where QualificationRequired='" + qual + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    //to get candidate id for candidates
    [DataObjectMethod(DataObjectMethodType.Select)]
    public DataSet Getcandid()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select CandidateId from tbl_Candidate", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    //inserting into stored procedure
    [DataObjectMethod(DataObjectMethodType.Select)]
    public int insertreg(String Cname, String Dname, int cid, DateTime date1, out int status)
    {
        int ret = 0;
        SqlCommand cmdCheckAvailability = new SqlCommand();
        cmdCheckAvailability.Connection = con;
        cmdCheckAvailability.CommandText = "usp_Register_Details";
        cmdCheckAvailability.CommandType = CommandType.StoredProcedure;
        cmdCheckAvailability.Parameters.AddWithValue("@compName", Cname);
        cmdCheckAvailability.Parameters.AddWithValue("@dept", Dname);
        cmdCheckAvailability.Parameters.AddWithValue("@candid", cid);
        cmdCheckAvailability.Parameters.AddWithValue("@RegDate", date1);
        SqlParameter prmStatus = new SqlParameter("@status", SqlDbType.Int);
        prmStatus.Direction = ParameterDirection.Output;
        cmdCheckAvailability.Parameters.Add(prmStatus);
        try
        {
            con.Open();
            ret = Convert.ToInt32(cmdCheckAvailability.ExecuteNonQuery());
            status = Convert.ToInt32(prmStatus.Value);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
        }
        return ret;
    }
}
