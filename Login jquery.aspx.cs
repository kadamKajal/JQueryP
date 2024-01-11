using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace JQuery_P
{
    public partial class Login_jquery : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["webc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Newprocedure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "ldata");
            cmd.Parameters.AddWithValue("@Email", TextBox1.Text);

            cmd.Parameters.AddWithValue("Password", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            con.Close();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["Id"] = dr["Id"].ToString();
                    string User_type = dr["User_type"].ToString();
                    Session["Images"] = dr["Images"].ToString();
                    if (User_type =="User")
                    {

                    }
                    else
                    {
                        Response.Redirect("Login failed");
                    }

                    //Session["Id"] = dr["Id"].ToString();
                    //string Email = dr["Email"].ToString();
                    //Session["Images"] = dr["Images"].ToString();
                    //string Usertype = dr["Usertype"].ToString()
                    //if (Usertype == "User")
                    //{
                    //    Response.Write("Login successfully");
                    //}
                    //else
                    //{
                    //    Response.Write("Login failed");
                    //}

                }



            }

        }
    }
}