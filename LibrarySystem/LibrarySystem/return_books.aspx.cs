using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LibrarySystem
{
    public partial class return_books : System.Web.UI.Page
    {
            SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
            string penalty = "0";
            double noofdays = 0;

            protected void Page_Load(object sender, EventArgs e)
            {
                if (con.State == System.Data.ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();

                string query1 = "select * from penalty";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.ExecuteNonQuery();
                DataTable dt1 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                da1.Fill(dt1);
                foreach (DataRow row in dt1.Rows)
                {
                    penalty = row["penalty"].ToString();
                }




                //this is temporary datatable
                DataTable tempdt = new DataTable();
                tempdt.Columns.Add("id");
                tempdt.Columns.Add("student_id");
                tempdt.Columns.Add("student_username");
                tempdt.Columns.Add("books_isbn");
                tempdt.Columns.Add("books_issue_date");
                tempdt.Columns.Add("books_approx_return_date");
                tempdt.Columns.Add("is_books_return");
                tempdt.Columns.Add("books_return_date");
                tempdt.Columns.Add("latedays");
                tempdt.Columns.Add("penalty");


                string query = "select * from issue_books where is_books_return = 'NO'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                foreach (DataRow row in dt.Rows)
                {
                    DataRow dr = tempdt.NewRow();
                    dr["id"] = row["id"].ToString();
                    dr["student_id"] = row["student_id"].ToString();
                    dr["student_username"] = row["student_username"].ToString();
                    dr["books_isbn"] = row["books_isbn"].ToString();
                    dr["books_issue_date"] = row["books_issue_date"].ToString();
                    dr["books_approx_return_date"] = row["books_approx_return_date"].ToString();
                    dr["is_books_return"] = row["is_books_return"].ToString();
                    dr["books_return_date"] = row["books_return_date"].ToString();


                    //caculate latedays

                    DateTime d1 = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy"));
                    DateTime d2 = Convert.ToDateTime(row["books_approx_return_date"].ToString());

                    if (d1 > d2)
                    {
                        TimeSpan t = d1 - d2;
                        noofdays = t.TotalDays;
                        dr["latedays"] = noofdays.ToString();
                    }
                    else
                    {
                        dr["latedays"] = "0";
                    }

                    dr["penalty"] = Convert.ToDouble(noofdays) * Convert.ToDouble(penalty);

                    tempdt.Rows.Add(dr);
                }

                r1.DataSource = tempdt;
                r1.DataBind();
            }
    }
}