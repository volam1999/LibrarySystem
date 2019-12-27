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
    public partial class add_books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-3L4FS0A\SQLEXPRESS;database= LibrarySystem; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            fud_image.SaveAs(Request.PhysicalApplicationPath + "/books_images/" + fud_image.FileName.ToString());
            string path = "/books_images/" + fud_image.FileName.ToString();
            String query = "insert into books values(N'" + txt_book_title.Text + "', N'" + path + "', N'" + txt_book_authorname.Text + "', '" + txt_book_isbn.Text + "', '" + txt_book_qty.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);

            try
            {
                cmd.ExecuteNonQuery();
                msg.Style.Add("display", "block");
            }
            catch (Exception)
            {
                error.Style.Add("display", "block");
            }

            con.Close();
        }
    }
}