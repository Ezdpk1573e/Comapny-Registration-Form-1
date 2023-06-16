using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Comapny_Registration_Form_1
{
    public partial class Regisration_Form_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select * from Country";
                SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=Company;Integrated Security=True");
                cn.Open();
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataAdapter da = new SqlDataAdapter(s, cn);
                DataTable data = new DataTable();
                da.Fill(data);
                DropDownList1.DataSource = data;
                DropDownList1.DataTextField = "C_Name";
                DropDownList1.DataValueField = "C_id";
                DropDownList1.DataBind();
                
            }
            string password = TextBox3.Text;
            TextBox3.Attributes.Add("value", password);
            string password1 = TextBox4.Text;
            TextBox4.Attributes.Add("value", password1);
        }
        void Empty()
        {
            //TextBox clear
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
            TextBox8.Text = string.Empty;
            TextBox9.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox13.Text = string.Empty;
            TextBox14.Text = string.Empty;
            TextBox15.Text = string.Empty;
            TextBox16.Text = string.Empty;
        }


        //date of birth
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            string[] dobs = TextBox5.Text.Split('-');
            string adob = dobs[2] + "/" + dobs[1] + "/" + dobs[0];

            DateTime dob = Convert.ToDateTime(adob);
            int age = (DateTime.Now.Subtract(dob).Days) / 365;
            TextBox6.Text = age.ToString();
        }
        //State
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string s = "select * from State where C_id='" + DropDownList1.SelectedValue + "'";
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=Company;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataAdapter da = new SqlDataAdapter(s, cn);
            DataTable data = new DataTable();
            da.Fill(data);
            DropDownList2.DataSource = data;
            DropDownList2.DataTextField = "S_Name";
            DropDownList2.DataValueField = "S_id";
            DropDownList2.DataBind();

        }

        //City
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string s = "select * from City where S_id='" + DropDownList2.SelectedValue + "'";
            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=Company;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(s, cn);
            SqlDataAdapter da = new SqlDataAdapter(s, cn);
            DataTable data = new DataTable();
            da.Fill(data);
            DropDownList3.DataSource = data;
            DropDownList3.DataTextField = "City_Name";
            DropDownList3.DataValueField = "City_id";
            DropDownList3.DataBind();
        }     

        //obtained  1
        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

            try
            {

                if(float.Parse(TextBox7.Text)> float.Parse(TextBox8.Text)&& float.Parse(TextBox8.Text)>0)
                {
                TextBox9.Text = (float.Parse(TextBox8.Text) / float.Parse(TextBox7.Text) * 100).ToString();
                }
                else
                {
                    TextBox9.Text = "0";
                }
            }
            catch
            {
               
            }
           
        }

        //obtained  2
        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (float.Parse(TextBox10.Text) > float.Parse(TextBox11.Text) && float.Parse(TextBox11.Text) > 0)
                {
                    TextBox12.Text = (float.Parse(TextBox11.Text) / float.Parse(TextBox10.Text) * 100).ToString();
                }
                else
                {
                    TextBox12.Text = "0";
                }
            }
            catch
            {

            }
        }

        //obtained  3
        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (float.Parse(TextBox13.Text) > float.Parse(TextBox14.Text) && float.Parse(TextBox14.Text) > 0)
                {

                
                TextBox15.Text = (float.Parse(TextBox14.Text) / float.Parse(TextBox13.Text) * 100).ToString();
                }
                else
                {
                    TextBox15.Text = "0";
                }
            }
            catch
            {

            }
            try
            {
                TextBox16.Text = (float.Parse(TextBox9.Text)+ float.Parse(TextBox12.Text) + float.Parse(TextBox15.Text)/3).ToString();
            }
            catch
            {

            }
        }


        //Submit button
        protected void Button1_Click(object sender, EventArgs e)
        {
            String s = "Insert into Student_full_data(Stu_Name,Stu_Email,Password,Date_of_Birth,Age,Country,State,City) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "')";
            SqlConnection sq = new SqlConnection(@"Data Source=DEV;Initial Catalog=Company;Integrated Security=True");
            sq.Open();

            SqlCommand sc = new SqlCommand(s, sq);
            int i = sc.ExecuteNonQuery();

            if (i > 0)
            {
                Response.Write("<script>alert('Data Inserted Successfully..')</script>");
            }
            else
            {
                
                Response.Write("<script>alert('Data Not Inserted..')</script>");

            }
            sq.Close();

            String q = "insert into Course(Courses, Obtaining, Obtained, Percentage, Avarage) values('HighSchhol','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox16.Text + "')," +
               "('Intermediate','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox16.Text + "')," +
               "('Graduation','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "')";

            SqlConnection cn = new SqlConnection(@"Data Source=DEV;Initial Catalog=Company;Integrated Security=True");
            cn.Open();
            SqlCommand cmd = new SqlCommand(q, cn);

            int c = cmd.ExecuteNonQuery();

            if (c > 0)
            {
                Response.Write("<script>alert('Marks Inserted Successfully..')</script>");
            }
            else
            {
                Response.Write("<script>alert('Marks Not Inserted..')</script>");
            }


            Empty();
           
           

        }

      
    
    }
}